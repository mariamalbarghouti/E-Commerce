import 'package:dartz/dartz.dart';
import 'package:trail/app/modules/add_product/domain/failures/value_object_failures.dart';
import 'package:trail/app/modules/add_product/domain/validation/description_validator.dart';
import 'package:trail/core/domain/value_object/value_object.dart';

// Description
class Description extends ValueObject<AddProductValueFailures,String>{
 Description._(this.value);
  @override
final Either<AddProductValueFailures, String> value ;
  factory Description({required String description}) {
    return Description._(descriptionValidator(description: description));
  }
}
