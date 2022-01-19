// import 'dart:io';
// import 'package:dartz/dartz.dart';
// import 'package:trail/app/core/domain/value_object/value_object.dart';
// import 'package:trail/app/modules/add_product/domain/failures/value_object_failures.dart';

// // Photo Picker
// class PhotoPicker extends ValueObject<AddProductValueFailures, File?> {
//   PhotoPicker._(this.value);
//   @override
//   final Either<AddProductValueFailures, File?> value;
//   // For Photo Validation
//   // factory PhotoPicker({required String? photo}) {
//   //   return PhotoPicker._(pickImageValidator(photo: photo));
//   // }
// }
import 'package:dartz/dartz.dart';
import 'package:trail/app/core/domain/value_object/value_object.dart';
import 'package:trail/app/modules/add_product/domain/failures/value_object_failures.dart';
import 'package:trail/app/modules/add_product/domain/validation/image_picker_validator.dart';

// Picked Images List
class List5<T> extends ValueObject<AddProductValueFailures,List<T>>{
  List5._(this.value);
  static const maxLength=5;
  @override
  Either<AddProductValueFailures, List<T>>  value;
  // List Length Validator
  factory List5({required List<T> listOfPickedImages}){
    return List5._(imagePickerValidator<T>(maxLength:maxLength ,ImagesList: listOfPickedImages));
  }
  // List Length
  // 0 is empty or more than 5
 int get length=>value.getOrElse(() => []).length;
 
 // Is List Full
 bool isFull()=>length==maxLength;

}