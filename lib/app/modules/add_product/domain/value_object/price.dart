import 'package:dartz/dartz.dart';
import 'package:trail/app/core/domain/value_object/value_object.dart';
import 'package:trail/app/modules/add_product/domain/failures/value_object_failures.dart';
import 'package:trail/app/modules/add_product/domain/validation/price_validator.dart';

// Price
class Price extends ValueObject<AddProductValueFailures,String>{
 Price._(this.value);
  @override
final Either<AddProductValueFailures, String> value ;
  factory Price({required String price}) {
    return Price._(priceValidator(price: price));
  }
}
