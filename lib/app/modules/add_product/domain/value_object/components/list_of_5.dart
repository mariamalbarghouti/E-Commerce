import 'package:dartz/dartz.dart';
import 'package:trail/app/core/domain/value_object/value_object.dart';
import 'package:trail/app/modules/add_product/domain/failures/value_object_failures.dart';
import 'package:trail/app/modules/add_product/domain/validation/list_of_5_validator.dart';

// Picked Images List
class ListOf5<T> extends ValueObject<AddProductValueFailures, List<T>> {
  ListOf5._(this.value);
  static const maxLength = 5;
  @override
  Either<AddProductValueFailures, List<T>> value;
  factory ListOf5({required List<T> listOf5}) {
    return ListOf5._(
      listOf5Validator<T>(imagesList: listOf5),
    );
  }
// to convet dynamic List into An Specific Data Type
  ListOf5<M> convertDynamicListToAnSpecificDataType<M>() {
    List<M> _convertToM = List<M>.from(getOrCrash());
    return ListOf5._(right(_convertToM));
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
          msg: "You Don't Have Images To delete!",
        ),
      );
    }
  }

  // Length
  int get length => value.getOrElse(() => []).length;
  // IsFull
  bool get isFull => length == maxLength;

  // Is Empty
  bool get isEmpty => value.getOrElse(() => []).isEmpty;
  bool get isNotEmpty => !isEmpty;
}
