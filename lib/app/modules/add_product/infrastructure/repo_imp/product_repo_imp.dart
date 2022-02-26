import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:rxdart/src/transformers/on_error_resume.dart';
import 'package:trail/app/core/domain/failures/server_failures/curd_server_error.dart';
import 'package:trail/app/core/domain/repo/product_repo.dart';
import 'package:trail/app/core/file_helper.dart';
import 'package:trail/app/core/infrastructure/firebase_helper.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/list_of_5.dart';
import 'package:trail/app/modules/add_product/domain/value_object/product.dart';
import 'package:dartz/dartz.dart';
import 'package:trail/app/modules/add_product/infrastructure/dto/add_product_tdo.dart';
import 'package:trail/core/print_logger.dart';
import 'package:path/path.dart' as Path;

/// import 'package/trail/app/core/file_helper.dart';
/// Implementing Product Repository
/// With Firebase
class ProductRepoFirebaseImp implements IProductRepo {
  final _firebaseFirestore = Get.find<FirebaseFirestore>();
  final _firebaseFireStorage = FirebaseStorage.instance;

  /// Create UUID
  @override
  String productID = Get.find<FirebaseFirestore>().UUID;

/// Upload product Images
  @override
  Future<Either<CURDOperationsServerFailures, List<String>>> uploadProductImages({
    required ListOf5<File> images,
  }) async {
    try {
      List<String> _downloadedUrl = [];
      UploadTask _uploadTask;
      for (int i = 0; i < images.length; i++) {
        _uploadTask = _firebaseFireStorage
            .ref('products')
            .child(productID)
            .child((images.getOrCrash()[i] as File).fileNameWithoutExtention)
            .putFile(images.getOrCrash()[i]);
        await _uploadTask.then((picValue) async {
          await picValue.ref.getDownloadURL().then((downloadUrl) {
            _downloadedUrl.add(downloadUrl);
          });
        });
      }
      return right(_downloadedUrl);
    } catch (e) {
      return left(
        CURDOperationsServerFailures.unexpectedError(msg: "Unexpected Error $e"),
      );
    }
  }

  /// Create Product Firebase Implementation
  @override
  Future<Either<CURDOperationsServerFailures, Unit>> createProductInfo({
    required Product product,
  }) async {
    /// put seller id
    ProductDTO _productDTO = ProductDTO.fromDomain(
      product: product.copyWith(
        uid: _firebaseFirestore.userCollection
            .doc(await _firebaseFirestore.userID),
      ),
    );
    try {
      await _firebaseFirestore.productsCollection
          .doc(productID)
          .set(_productDTO.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return left(
          const CURDOperationsServerFailures.permissionsDenied(),
        );
      } else {
        return left(
          const CURDOperationsServerFailures.unexpectedError(),
        );
      }
    }
  }

/// Delete Post Info
  @override
  Future<Option<CURDOperationsServerFailures>> deletePostInfo(
      {required String id}) async {
    try {
      await _firebaseFirestore.productsCollection.doc(id).delete();
      return none();
    } catch (e) {
      return _handlingError(e);
    }
  }

  /// Delete All The Images
  @override
  Future<Option<CURDOperationsServerFailures>> deletePostImages({
    required Product product,
  }) async {
    try {
      String _fileUrl = "";
      for (int i = 0; i < product.pickedImages.length; i++) {
        /// Extract The Path From URL
        _fileUrl = Uri.decodeFull(
          Path.basename(
            (product.pickedImages.getOrCrash()[i] as String)
                .replaceAll(RegExp(r'(\?alt).*'), ''),
          ),
        );
        /// Delete
        await _firebaseFireStorage.ref(_fileUrl).delete();
      }
      return none();
    } catch (e) {
      return _handlingError(e);
    }
  }

  /// Update Product Info
  @override
  Future<Option<CURDOperationsServerFailures>> updateProductInfo({
    required Product product,
  }) async {
    try {
      await _firebaseFirestore.productsCollection
          .doc(product.id)
          .update(ProductDTO.fromDomain(product: product).toJson());
      return none();
    } catch (e) {
      return _handlingError(e);
    }
  }

  @override
  Future<Either<CURDOperationsServerFailures, List<String>>> updateProductImages({
    required ListOf5<File> images,
    required String id,
  }) async {
    try {
      UploadTask _uploadTask;
      List<String> _downloadedUrl = [];
      /// for (int i = 0; i < images.length; i++) {
      for (int i = 0; i < images.length; i++) {
        _uploadTask = _firebaseFireStorage
            .ref('products')
            .child(id)
            .child((images.getOrCrash()[i] as File).fileNameWithoutExtention)
            .putFile(images.getOrCrash()[i]);
        /// Upload Image
        await _uploadTask.then((picValue) async {
          await picValue.ref.getDownloadURL().then((downloadUrl) {
            _downloadedUrl.add(downloadUrl);
          });
        });
      }
      return right(_downloadedUrl);
    } catch (e) {
      return left(
        CURDOperationsServerFailures.unexpectedError(msg: "Unexpected Error $e"),
      );
    }
  }

  /// Delete an Specific Image
  @override
  Future<Option<CURDOperationsServerFailures>> deleteAnSpecificImage({
    required File image,
    required String id,
  }) async {
    try {
      await _firebaseFireStorage
          .ref('products')
          .child(id)
          .child(image.fileNameWithoutExtention)
          .delete();
      return none();
    } catch (e) {
      return _handlingError(e);
    }
  }

  ///  Handling Error
  Option<CURDOperationsServerFailures> _handlingError(e) {
    if (e is FirebaseException) {
      return some(
          CURDOperationsServerFailures.serverError(msg: "Server Error ${e.code}"));
    } else {
      return some(
          CURDOperationsServerFailures.unexpectedError(msg: "Unexpected Error $e"));
    }
  }

  DocumentSnapshot? _lastDoc;
  bool _hasMore = true;
  /// first one
  @override
  Stream<Either<CURDOperationsServerFailures, List<Product>>>
      fetchProducts() async* {
    yield* _firebaseFirestore.productsCollection
        .orderBy('time', descending: true)
        .limit(15)
        .snapshots()
        .map(
      (snapshot) {
        return right<CURDOperationsServerFailures, List<Product>>(
            snapshot.docs.map((doc) {
          _lastDoc = doc;
          return ProductDTO.fromFireStore(doc).toDomain();
        }).toList());
      },
    ).onErrorReturnWith((error, stackTrace) => handlingError(error: error));
  }

  /// Pagination
  @override
  Stream<Either<CURDOperationsServerFailures, List<Product>>>
      fetchProductsFromTheNextPage() async* {
    yield* _firebaseFirestore.productsCollection
        .orderBy('time', descending: true)
        .limit(15)
        .startAfterDocument(_lastDoc!)
        .snapshots()
        .map(
      (snapshot) {
        if (!_hasMore) {
          return left<CURDOperationsServerFailures, List<Product>>(
              const CURDOperationsServerFailures.noMoreData());
        }
        if (snapshot.docs.length < 6) {
          _hasMore = false;
        }
        return right<CURDOperationsServerFailures, List<Product>>(
            snapshot.docs.map((doc) {
          _lastDoc = doc;
          return ProductDTO.fromFireStore(doc).toDomain();
        }).toList());
      },
    ).onErrorReturnWith((error, stackTrace) => handlingError(error: error));
  }

  /// Handling Error
  Either<CURDOperationsServerFailures, List<Product>> handlingError(
      {required Object error}) {
    if (error is FirebaseException && error.code == 'permission-denied') {
      return left(const CURDOperationsServerFailures.permissionsDenied());
    } else if (error is FirebaseException &&
        error.code != 'permission-denied') {
      return left( CURDOperationsServerFailures.serverError(msg: "Server Error ${error.code}"));
    } else {
      return left(
        CURDOperationsServerFailures.unexpectedError(msg: "Error: $error"),
      );
    }
  }
}
