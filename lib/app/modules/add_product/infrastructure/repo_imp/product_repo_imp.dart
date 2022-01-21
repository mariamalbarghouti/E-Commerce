import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:trail/app/modules/add_product/domain/value_object/product.dart';
import 'package:trail/app/modules/add_product/domain/failures/server_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:trail/app/modules/add_product/domain/product_repo.dart';
import 'package:trail/app/modules/add_product/infrastructure/dto/add_product_tdo.dart';

// Implementing Prodiuct Repository 
// With Firebase
class ProductRepoFirebaseImp implements IProductRepo {
  @override
  Future<Either<AddProductServerFailures, Unit>> createProduct(
      {required Product product}) async {
    try {
      ProductDTO _productDTO = ProductDTO.fromDomain(product: product);
      await FirebaseFirestore.instance
          .collection("products")
          .add(_productDTO.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message?.contains('PERMISSION_DENIED') ?? false) {
        print("PERMISSION_DENIED ${e.message}");
        return left(const AddProductServerFailures.permissionsDenied());
      } else {
        // TODO read the documentation about return error from server
        return left(const AddProductServerFailures.unexpectedError());
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

}
