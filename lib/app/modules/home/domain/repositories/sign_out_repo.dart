import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:trail/app/core/domain/failures/server_failures/firestore_failures.dart';
import 'package:trail/app/modules/add_product/domain/value_object/product.dart';

abstract class IHomeRepository extends GetConnect {
  // TODO Make it inside signIN
  Future<void> signOut();
  // for bring data for the first time
  Stream<Either<FireStoreServerFailures, List<Product>>> fetchProducts();
  //  for pagination
  Stream<Either<FireStoreServerFailures, List<Product>>>
      fetchProductsFromTheNextPage();
}
