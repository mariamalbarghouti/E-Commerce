import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:trail/app/core/domain/failures/server_failures/firestore_failures.dart';
import 'package:trail/app/modules/add_product/domain/value_object/product.dart';

abstract class IHomeRepository extends GetConnect{
  Future<void> signOut();
   Stream<Either<FireStoreServerFailures, List<Product>>>fetchProducts();
  // Future<bool>  isUserOut();
}
