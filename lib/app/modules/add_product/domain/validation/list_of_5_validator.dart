import 'package:dartz/dartz.dart';
import 'package:trail/app/modules/add_product/domain/failures/value_object_failures.dart';
import 'package:trail/core/print_logget.dart';

// ListOf5 Validator
Either<AddProductValueFailures, List<T>> listOf5Validator<T>({
  required List<T> imagesList,
}) {
  if (imagesList.length > 5) {
    return left(const AddProductValueFailures.exceedingLenth(
        msg: "You Exceeded The Maximum Size"));
  } else if (imagesList.isEmpty) {
    coloredPrint(msg: "Empty",color: LogColors.red);
    return left(const AddProductValueFailures.empty(
        msg: "You Have To Upload At least One Image"));
  } else {
    return right(imagesList);
  }
}
