import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:trail/app/core/domain/failures/server_failures/curd_server_error.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/list_of_5.dart';
import 'package:trail/app/modules/add_product/domain/value_object/product.dart';

// Product Repository
abstract class IProductRepo  {
  // Id For The Post And The Folder of the images
  late final String productID;
  //  Upload Images To DB
  Future<Either<CURDOperationsServerFailures, List<String>>> uploadProductImages(
      {required ListOf5<File> images});
  // Upload Product data
  Future<Either<CURDOperationsServerFailures, Unit>> createProductInfo(
      {required Product product});
        // DeletePost
  Future< Option<CURDOperationsServerFailures>> deletePostInfo({required String id});
  // Delete Images
  Future< Option<CURDOperationsServerFailures>> deletePostImages({required Product product});
  // Delete An Specific Image
  Future<Option<CURDOperationsServerFailures>> deleteAnSpecificImage( {required File image,required String id,});
  // Update Product Images
   Future<Either<CURDOperationsServerFailures, List<String>>> updateProductImages({required ListOf5<File> images,required String id});
  // Update Product Info
  Future<Option<CURDOperationsServerFailures>> updateProductInfo({required Product product});
  // for bring data for the first time
  Stream<Either<CURDOperationsServerFailures, List<Product>>> fetchProducts();
  //  for pagination
  Stream<Either<CURDOperationsServerFailures, List<Product>>>
      fetchProductsFromTheNextPage();
}
