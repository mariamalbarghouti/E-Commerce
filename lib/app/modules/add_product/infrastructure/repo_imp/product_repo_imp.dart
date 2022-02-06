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

// Implementing Prodiuct Repository
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
  Future<Either<FireStoreServerFailures, Unit>> createProduct({
    required Product product,
  }) async {
    ProductDTO _productDTO = ProductDTO.fromDomain(
      product: product,
      uid: _firebaseFirestore.userCollection
          .doc(await _firebaseFirestore.userID),
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
}
