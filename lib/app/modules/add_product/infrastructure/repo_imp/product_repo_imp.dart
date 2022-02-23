import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:trail/app/core/domain/failures/server_failures/firestore_failures.dart';
import 'package:trail/app/core/infrastucture/firebase_helper.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/list_of_5.dart';
import 'package:trail/app/modules/add_product/domain/value_object/product.dart';
import 'package:dartz/dartz.dart';
import 'package:trail/app/modules/add_product/domain/product_repo.dart';
import 'package:trail/app/modules/add_product/infrastructure/dto/add_product_tdo.dart';
import 'package:trail/core/print_logger.dart';

// Implementing Product Repository
// With Firebase
class ProductRepoFirebaseImp implements IProductRepo {
  final _firebaseFirestore = Get.find<FirebaseFirestore>();

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
        UploadTask _uploadTask = FirebaseStorage.instance
            .ref('products')
            .child(productID)
            .child('$i')
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
        uid:  _firebaseFirestore.userCollection
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
  
  @override
  Future<Option<FireStoreServerFailures>> deleteThePost(
      {required String id}) async {
    try {
      await _firebaseFirestore.productsCollection.doc(id).delete();
      return none();
    } catch (e) {
      return _handlingError(e);
    }
  }

  @override
  Future<Option<FireStoreServerFailures>> deleteTheImages(
      {required String id}) async {
    try {
      for (int i = 0; i < Get.arguments.pickedImages.length; i++) {
        await FirebaseStorage.instance
            .ref('products')
            .child(Get.arguments.id)
            .child(i.toString())
            .delete();
      }
      return none();
    } catch (e) {
      return _handlingError(e);
    }
  }

  @override
  Future<Option<FireStoreServerFailures>> updateProductInfo(
      {required Product product}) async {
    try {
      await _firebaseFirestore.productsCollection
          .doc(product.id)
          .update(ProductDTO.fromDomain(product: product).toJson());
      return none();
    } catch (e) {
      return _handlingError(e);
    }
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

  @override
  Future<Option<FireStoreServerFailures>> updateProductImages({required Product product}) {
    // TODO: implement updateProductImages
    throw UnimplementedError();
  }
}
