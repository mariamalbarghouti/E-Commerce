import 'package:dartz/dartz.dart';
import 'package:trail/app/modules/add_product/domain/failures/server_failures.dart';
import 'package:trail/app/modules/add_product/domain/value_object/product.dart';

abstract class IProductRepo {
 Future<Either<AddProductServerFailures,Unit>> createProduct({required Product product});
}