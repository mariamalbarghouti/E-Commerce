import 'package:dartz/dartz.dart';
import 'package:trail/app/core/domain/validations/value_field_validation/empty_filed.dart';
import 'package:trail/app/core/domain/validations/value_field_validation/short_length.dart';
import 'package:trail/app/core/domain/value_object/value_object.dart';
import 'package:trail/app/modules/add_product/domain/failures/value_object_failures.dart';

// Description
class Description extends ValueObject<AddProductValueFailures, String> {
  Description._(this.value);
  @override
  final Either<AddProductValueFailures, String> value;
  factory Description({required String description}) {
    return Description._(
      emptyValidator(description).flatMap(shortLengthValidator),
    );
  }
}