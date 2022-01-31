import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:trail/app/core/domain/value_object/value_object.dart';
import 'package:trail/app/modules/add_product/domain/failures/value_object_failures.dart';
import 'package:trail/app/modules/add_product/domain/validation/list_of_5_validator.dart';

// Picked Images List
class ListOf5<T> extends ValueObject<AddProductValueFailures, List<T>> {
  ListOf5._(this.value);
  @override
  Either<AddProductValueFailures, List<T>> value;
  factory ListOf5({required List<T> listOfPickedImages}) {
    return ListOf5._(
      listOf5Validator<T>(imagesList: listOfPickedImages),
    );
  }

  /// for deleting index
  void deleteIndex(index) {
    if (!isEmpty) {
      value.getOrElse(() => <T>[]).removeAt(index);
      // if the next is empty make a failure
      if (value.getOrElse(() => <T>[]).isEmpty) {
        value = left(
          const AddProductValueFailures.empty(
            msg: "You Have To Upload At least One Image",
          ),
        );
      }
    } else {
      value = left(
        const AddProductValueFailures.empty(
            msg: "You Have To Upload At least One Image"),
      );
    }
  }

  // Length
  int get length => value.getOrElse(() => []).length;
  // IsFull
  bool get isFull => length == 5;

  // Is Empty
  bool get isEmpty => value.getOrElse(() => []).isEmpty;
}
