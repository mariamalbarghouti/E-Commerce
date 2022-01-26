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
    required List<Asset> images,
  }) async {
    try {
      String? filePath;
      List<String> _downloadedUrl = [];
      for (int i = 0; i < images.length; i++) {
        filePath = await FlutterAbsolutePath.getAbsolutePath(
            images[i].identifier ?? "");

        UploadTask _uploadTask = FirebaseStorage.instance
        // TODO handle ""
            .ref('products')
            .child(productID)
            .child(images[i].name ?? "")
            .putFile(File(filePath ?? ""));
        await _uploadTask.then((picValue) async {
          await picValue.ref.getDownloadURL().then((downloadUrl) {
            _downloadedUrl.add(downloadUrl);
          });
        });
      }
      return right(_downloadedUrl);
    } catch (e) {
      return left(
         AddProductServerFailures.unexpectedError(msg: "Unexpected Error ${e}"),
      );
    }
  }

  // Create Product Firebase Implementation
  @override
  Future<Either<AddProductServerFailures, Unit>> createProduct({
    required Product product,
  }) async {
    // TODO Delet it
    ProductDTO _productDTO = ProductDTO.fromDomain(
      product: product,
      uid: await _firebaseFirestore.userID,
    );
    try {
      // DocumentReference<Object?> productPref =
      await _firebaseFirestore.productsCollection
          .doc(productID)
          .set(_productDTO.toJson());
      // .set(;
      // productID = productPref.id;
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

  //  Upload Product Details
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
  // TODO put user id

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

}
