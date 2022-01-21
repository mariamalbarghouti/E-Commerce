import 'package:dartz/dartz.dart';
import 'package:trail/app/core/domain/value_object/value_object.dart';
import 'package:trail/app/modules/add_product/domain/failures/value_object_failures.dart';
import 'package:trail/app/modules/add_product/domain/value_object/product.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';
class UniqueID extends ValueObject<AddProductValueFailures,String>{
  UniqueID._(this.value);
  @override
  Either<AddProductValueFailures, String> value ;
  factory UniqueID(){
    return (UniqueID._(right(const Uuid().v4())));
  }
}
