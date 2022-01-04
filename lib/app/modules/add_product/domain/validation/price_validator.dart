import 'package:dartz/dartz.dart';
import 'package:trail/app/modules/add_product/domain/failures/value_object_failures.dart';

// Price Validator
Either<AddProductValueFailures, String> priceValidator(
    {required String price}) {
  var regex = r'''\d{1,3}(?:[.,]\d{3})*(?:[.,]\d{2})?''';
  if (RegExp(regex).hasMatch(price)) {
    return right(price);
  } else {
    return left(
      const AddProductValueFailures.enterAValidPrice(
          msg: "Please Enter Your Price"),
    );
  }
}
