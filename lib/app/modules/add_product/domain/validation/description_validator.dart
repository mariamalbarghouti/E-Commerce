import 'package:dartz/dartz.dart';
import 'package:trail/app/modules/add_product/domain/failures/value_object_failures.dart';

// Description Validator
Either<AddProductValueFailures, String> descriptionValidator({
  required String description,
}) {
  if (description.trim().isEmpty) {
    return left(
      const AddProductValueFailures.enterDescription(
        msg: "Please Enter Your Description",
      ),
    );
  } else if (description.length < 12) {
    return left(
      const AddProductValueFailures.enterAValidDescription(
        msg: "Please Enter A Valid Description",
      ),
    );
  } else {
    return right(description);
  }
}
