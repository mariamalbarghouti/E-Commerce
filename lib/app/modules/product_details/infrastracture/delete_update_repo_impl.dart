import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:trail/app/core/domain/failures/server_failures/firestore_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:trail/app/core/infrastucture/firebase_helper.dart';
import 'package:trail/app/modules/add_product/domain/value_object/product.dart';
import 'package:trail/app/modules/add_product/infrastructure/dto/add_product_tdo.dart';
import 'package:trail/app/modules/product_details/repository/delete_update_repo.dart';

// Delete And Update Implementation
class DeleteOrUpdateRepImpl implements IDeleteOrUpdateRep {
  final _firebaseFirestore = Get.find<FirebaseFirestore>();

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
  Future<Option<FireStoreServerFailures>> update(
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
}
