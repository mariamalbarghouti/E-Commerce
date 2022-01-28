import 'package:dartz/dartz.dart'; 
import 'package:trail/app/core/domain/value_object/value_object.dart';
import 'package:trail/app/modules/add_product/domain/failures/value_object_failures.dart';
import 'package:trail/app/modules/add_product/domain/validation/image_picker_validator.dart';

// Picked Images List
class ListOf5<T> extends ValueObject<AddProductValueFailures, List<T>> {
  ListOf5._(this.value);
  static const maxLength = 5;
  @override
  Either<AddProductValueFailures, List<T>> value;
  // List Length Validator
  factory ListOf5({required List<T> listOfPickedImages}) {
    return ListOf5._(imagePickerValidator<T>(
         imagesList: listOfPickedImages));
  }


  // List Length
  // 0 is empty or more than 5
  int get length => value.getOrElse(() => [] ).length;

  // Is List Full
  bool isFull() => length == maxLength;
  // Is Lest Empty
  bool isEmpty() => length == 0;
  
}
