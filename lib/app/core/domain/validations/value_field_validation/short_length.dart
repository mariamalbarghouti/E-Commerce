import 'package:dartz/dartz.dart';
import 'package:trail/app/modules/add_product/domain/failures/value_object_failures.dart';

// Description Validator
Either<AddProductValueFailures, String> shrotLengthValidator(String data) {
  // TODO make max length
  if (data.length < 12) {
    return left(
      const AddProductValueFailures.shortLenght(
        msg: "Your Entry Is Soo Short",
      ),
    );
  } else {
    return right(data);
  }
}
