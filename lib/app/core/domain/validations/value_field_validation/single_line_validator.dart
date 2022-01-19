// validateSingleLine

import 'package:dartz/dartz.dart';
import 'package:trail/app/modules/add_product/domain/failures/value_object_failures.dart';

// Single Line Validator 
Either<AddProductValueFailures, String> singleLineValidator(String data) {
  if (data.contains("\n")) {
    return left(
      const AddProductValueFailures.multipleLines(
        msg: "You Should Not Have Multiple Lines",
      ),
    );
  } else {
    return right(data);
  }
}
