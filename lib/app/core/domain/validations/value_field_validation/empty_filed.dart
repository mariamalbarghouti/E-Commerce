import 'package:dartz/dartz.dart';
import 'package:trail/app/modules/add_product/domain/failures/value_object_failures.dart';

// Empty Field Validator
Either<AddProductValueFailures, String>emptyValidator( String data) {
  if (data.trim().isEmpty) {
    return left(
      const AddProductValueFailures.empty(
        msg: "This Field Is Empty",
      ),
    );
  } else {
    return right(data);
  }
}
