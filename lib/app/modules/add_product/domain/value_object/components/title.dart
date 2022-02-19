import 'package:dartz/dartz.dart';
import 'package:trail/app/core/domain/validations/value_field_validation/empty_filed.dart';
import 'package:trail/app/core/domain/validations/value_field_validation/short_length.dart';
import 'package:trail/app/core/domain/validations/value_field_validation/single_line_validator.dart';
import 'package:trail/app/core/domain/value_object/value_object.dart';
import 'package:trail/app/modules/add_product/domain/failures/value_object_failures.dart';

// Title Class
class ProductTitle extends ValueObject<AddProductValueFailures, String> {
  ProductTitle._(this.value);
  @override
  final Either<AddProductValueFailures, String> value;
  factory ProductTitle({required String title}) {
    return ProductTitle._(
      emptyValidator(title)
          .flatMap(shortLengthValidator)
          .flatMap(singleLineValidator),
    );
  }
}
