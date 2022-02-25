import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:trail/app/core/domain/failures/server_failures/firestore_failures.dart';
import 'package:trail/app/core/file_helper.dart';
import 'package:trail/app/core/infrastructure/firebase_helper.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/list_of_5.dart';
import 'package:trail/app/modules/add_product/domain/value_object/product.dart';
import 'package:dartz/dartz.dart';
import 'package:trail/app/modules/add_product/domain/product_repo.dart';
import 'package:trail/app/modules/add_product/infrastructure/dto/add_product_tdo.dart';
import 'package:trail/core/print_logger.dart';
import 'package:path/path.dart' as Path;

// import 'package/trail/app/core/file_helper.dart';
// Implementing Product Repository
// With Firebase
class ProductRepoFirebaseImp implements IProductRepo {
  final _firebaseFirestore = Get.find<FirebaseFirestore>();
  final _firebaseFireStorage = FirebaseStorage.instance;

  // Create UUID
  @override
  String productID = Get.find<FirebaseFirestore>().UUID;

// Upload product Images
  @override
  Future<Either<FireStoreServerFailures, List<String>>> uploadProductImages({
    required ListOf5<File> images,
  }) async {
    try {
      List<String> _downloadedUrl = [];
      for (int i = 0; i < images.length; i++) {
        UploadTask _uploadTask = _firebaseFireStorage
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
        FireStoreServerFailures.unexpectedError(msg: "Unexpected Error $e"),
      );
    }
  }

  // Create Product Firebase Implementation
  @override
  Future<Either<FireStoreServerFailures, Unit>> createProductInfo({
    required Product product,
  }) async {
    // put seller id
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
          const FireStoreServerFailures.permissionsDenied(),
        );
      } else {
        return left(
          const FireStoreServerFailures.unexpectedError(),
        );
      }
    }
  }

// Delete Post Info
  @override
  Future<Option<FireStoreServerFailures>> deletePostInfo(
      {required String id}) async {
    try {
      await _firebaseFirestore.productsCollection.doc(id).delete();
      return none();
    } catch (e) {
      return _handlingError(e);
    }
  }

  // Delete All The Images
  @override
  Future<Option<FireStoreServerFailures>> deletePostImages({
   
    required Product product,
  }) async {
    try {
      String _fileUrl = "";
      for (int i = 0; i < product.pickedImages.length; i++) {
        // Extract The Path From URL
        _fileUrl = Uri.decodeFull(
          Path.basename(
            (product.pickedImages.getOrCrash()[i] as String)
                .replaceAll(RegExp(r'(\?alt).*'), ''),
          ),
        );
        // Delete
        await _firebaseFireStorage.ref(_fileUrl).delete();
      }
      return none();
    } catch (e) {
      return _handlingError(e);
    }
  }

  // Update Product Info
  @override
  Future<Option<FireStoreServerFailures>> updateProductInfo({
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
  Future<Either<FireStoreServerFailures, List<String>>> updateProductImages({
    required ListOf5<File> images,
    required String id,
  }) async {
    try {
      List<String> _downloadedUrl = [];
      // for (int i = 0; i < images.length; i++) {
      for (int i = 0; i < images.length; i++) {
        UploadTask _uploadTask = _firebaseFireStorage
            .ref('products')
            .child(id)
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
        FireStoreServerFailures.unexpectedError(msg: "Unexpected Error $e"),
      );
    }
  }

  @override
  fun(id) async {
    // FullMetadata x =
// String fileUrl =Uri.decodeFull(Path.basename(.replaceAll(RegExp(r'(\?alt).*'), '')));
    var x = await _firebaseFireStorage
        // .ref('products/$id')
        // .getReferenceFromUrl()
        .ref();
    coloredPrint(msg: "msg#${x}");
    await _firebaseFireStorage
        // .ref('products/$id')
        // .getReferenceFromUrl()
        .ref(
            "https://firebasestorage.googleapis.com/v0/b/fluttertrail.appspot.com/o/products%2FAmJ20c4ho9EGtgBdGRvS%2FScreenshot_2022-02-23-00-34-45?alt=media&token=0ad3bdc5-e471-41bc-9f04-78dae8e5ee5a")
        // .getMetadata();
        .delete();
    coloredPrint(msg: "msg#");
  }

  Option<FireStoreServerFailures> _handlingError(e) {
    if (e is FirebaseException) {
      return some(
          FireStoreServerFailures.serverError(msg: "Server Error ${e.code}"));
    } else {
      return some(
          FireStoreServerFailures.unexpectedError(msg: "Unexpected Error $e"));
    }
  }
}
