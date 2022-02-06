import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:trail/app/core/domain/failures/server_failures/firestore_failures.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/list_of_5.dart';
import 'package:trail/app/modules/add_product/domain/value_object/product.dart';

abstract class IProductRepo {
late final String productID;
 Future<Either<FireStoreServerFailures,Unit>> createProduct({required Product product});
/// TODO make list of 5
 Future<Either<FireStoreServerFailures,List<String>>> uploadProductImages({required ListOf5<File> images});
}