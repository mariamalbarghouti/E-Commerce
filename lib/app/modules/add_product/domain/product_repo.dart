import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:trail/app/modules/add_product/domain/failures/server_failures.dart';
import 'package:trail/app/modules/add_product/domain/value_object/product.dart';

abstract class IProductRepo {
late final String productID;
 Future<Either<AddProductServerFailures,Unit>> createProduct({required Product product});
/// TODO make list of 5
 Future<Either<AddProductServerFailures,List<String>>> uploadProductImages({required List<File> images});
}