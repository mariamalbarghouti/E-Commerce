import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:trail/app/core/domain/failures/server_failures/firestore_failures.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/list_of_5.dart';
import 'package:trail/app/modules/add_product/domain/value_object/product.dart';

// Product Repository
abstract class IProductRepo  {
  // Id For The Post And The Folder of the images
  late final String productID;
  //  Upload Images To DB
  Future<Either<FireStoreServerFailures, List<String>>> uploadProductImages(
      {required ListOf5<File> images});
  // Upload Product data
  Future<Either<FireStoreServerFailures, Unit>> createProductInfo(
      {required Product product});
        // DeletePost
  Future< Option<FireStoreServerFailures>> deletePostInfo({required String id});
  // Delete Images
  Future< Option<FireStoreServerFailures>> deletePostImages({required Product product});
  // Update Product Info
   Future<Either<FireStoreServerFailures, List<String>>> updateProductImages({required ListOf5<File> images,required String id});
  // Update Product Info
  Future<Option<FireStoreServerFailures>> updateProductInfo({required Product product});
fun(id);
}
