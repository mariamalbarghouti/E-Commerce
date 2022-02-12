import 'package:dartz/dartz.dart';
import 'package:trail/app/core/domain/failures/server_failures/firestore_failures.dart';
import 'package:trail/app/modules/add_product/domain/value_object/product.dart';

abstract class IDeleteOrUpdateRep {
  // DeletePost
  Future< Option<FireStoreServerFailures>>deleteThePost({required String id});
  // Delete Images
  Future< Option<FireStoreServerFailures>>deleteTheImages({required String id});
  // Update Product
  Future<Option<FireStoreServerFailures>> update({required Product product});
}