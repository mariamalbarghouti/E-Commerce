import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_absolute_path/flutter_absolute_path.dart';
import 'package:get/get.dart';
import 'package:multi_image_picker2/src/asset.dart';
import 'package:trail/app/core/infrastucture/firebase_helper.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/image_picker.dart';
import 'package:trail/app/modules/add_product/domain/value_object/product.dart';
import 'package:trail/app/modules/add_product/domain/failures/server_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:trail/app/modules/add_product/domain/product_repo.dart';
import 'package:trail/app/modules/add_product/infrastructure/dto/add_product_tdo.dart';

// Implementing Prodiuct Repository
// With Firebase
class ProductRepoFirebaseImp implements IProductRepo {
  final _firebaseFirestore = Get.find<FirebaseFirestore>();
  // TODO make upload images first
  @override
  String? productID;
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
      DocumentReference<Object?> productPref =
          await _firebaseFirestore.productsCollection.add(_productDTO.toJson());
      productID = productPref.id;
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return left(
          const AddProductServerFailures.permissionsDenied(
              msg: "Permission Denied"),
        );
      } else {
        return left(
          const AddProductServerFailures.unexpectedError(
              msg: "Unexpected Error"),
        );
      }
    }
  }

  @override
  Future<Either<AddProductServerFailures, Unit>> uploadProductImages(
      {required List<Asset> images}) async {
    try {
      String? filePath;
      // List<String> _downloadUrls = [];
      for (int i = 0; i <= images.length; i++) {
        filePath = await FlutterAbsolutePath.getAbsolutePath(
            images[i].identifier ?? "");
        await FirebaseStorage.instance
            // TODO const
            .ref('products')
            .child(productID!)
            // TODO handle it
            .child(images[i].name ?? "")
            .putFile(File(filePath ?? ""));
      }
      return right(unit);
    } catch (e) {
      print("error: $e");
      return left(const AddProductServerFailures.unexpectedError(
          msg: "Unexpected Error"),);
    }
  }
}
//    //  Upload Product Details
//   Future<void> _uploadImageToFireSrtorage(docID) async {
//     try {
//       final filePath =
//           await FlutterAbsolutePath.getAbsolutePath(images[0].identifier ?? "");
//       await FirebaseStorage.instance
//           .ref('products/$docID')
//           .putFile(File(filePath ?? ""));
//     } catch (e) {
//       print(e.toString());
//     }
//   }
//   // TODO put user id

//   Future<void> _uploadFireStore(docID) async {
//     try {
//       await FirebaseFirestore.instance.collection("products").doc(docID).set({
//         "title": titleEditionController.value.text,
//         "price": priceEditionController.value.text,
//         "description": descriptionEditionController.value.text,
//       });
//     } catch (e) {
//       print("\n Error $e \n");
//     }
//   }

// //  Upload Image
//   Future<void> _uploadProductDetails(docID) async {
//     try {
//       await FirebaseFirestore.instance.collection("products").doc(docID).set({
//         "imgUrl": url,
//       }, SetOptions(merge: true));
//       Get.snackbar(
//         "Sucess",
//         "Your Product Is Added",
//         snackPosition: SnackPosition.BOTTOM,
//       );
//       Get.toNamed(Routes.HOME);
//     } catch (e) {
//       print("\n Error $e \n");
//     }
//   }
// }

// }
