import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_absolute_path/flutter_absolute_path.dart';
import 'package:get/get.dart';
import 'package:multi_image_picker2/multi_image_picker2.dart';
import 'package:trail/app/core/infrastucture/firebase_helper.dart';
import 'package:trail/app/modules/add_product/domain/value_object/product.dart';
import 'package:trail/app/modules/add_product/domain/failures/server_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:trail/app/modules/add_product/domain/product_repo.dart';
import 'package:trail/app/modules/add_product/infrastructure/dto/add_product_tdo.dart';

// Implementing Prodiuct Repository
// With Firebase
class ProductRepoFirebaseImp implements IProductRepo {
  final _firebaseFirestore = Get.find<FirebaseFirestore>();

  @override
  String productID = Get.find<FirebaseFirestore>().Uuid;

  @override
  Future<Either<AddProductServerFailures, List<String>>> uploadProductImages({
    required List<File> images,
  }) async {
    try {
      // String? filePath;
      List<String> _downloadedUrl = [];
      for (int i = 0; i < images.length; i++) {
        // filePath = await FlutterAbsolutePath.getAbsolutePath(
        //   images[i].identifier ?? "",
        // );
 //     List<String> _downloadedUrl = [];
      // for (int i = 0; i < _imagesForDomain.length; i++) {
      //   UploadTask _uploadTask = FirebaseStorage.instance
      //       .ref('products')
      //       .child("mk")
      //       .child(i.toString())//name ?? "")
      //       .putFile(File(_imagesForDomain[i].path ));
      //   await _uploadTask.then((picValue) async {
      //     await picValue.ref.getDownloadURL().then((downloadUrl) {
      //       _downloadedUrl.add(downloadUrl);
      //     });
      //   });
      // }
        UploadTask _uploadTask = FirebaseStorage.instance
            .ref('products')
            .child(productID)
            .child('$i')
            .putFile(images[i]);
        await _uploadTask.then((picValue) async {
          await picValue.ref.getDownloadURL().then((downloadUrl) {
            _downloadedUrl.add(downloadUrl);
          });
        });
      }
      return right(_downloadedUrl);
    } catch (e) {
      return left(
        AddProductServerFailures.unexpectedError(msg: "Unexpected Error $e"),
      );
    }
  }

  // Create Product Firebase Implementation
  @override
  Future<Either<AddProductServerFailures, Unit>> createProduct({
    required Product product,
  }) async {
    ProductDTO _productDTO = ProductDTO.fromDomain(
      product: product,
      uid: await _firebaseFirestore.userID,
    );
    try {
      await _firebaseFirestore.productsCollection
          .doc(productID)
          .set(_productDTO.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return left(
          const AddProductServerFailures.permissionsDenied(
            msg: "Permission Denied",
          ),
        );
      } else {
        return left(
          const AddProductServerFailures.unexpectedError(
            msg: "Unexpected Error",
          ),
        );
      }
    }
  }
}
