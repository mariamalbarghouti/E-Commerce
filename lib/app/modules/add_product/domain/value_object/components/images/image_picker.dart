// import 'package:dartz/dartz.dart';
// import 'package:multi_image_picker2/multi_image_picker2.dart'; 
// import 'package:trail/app/core/domain/value_object/value_object.dart';
// import 'package:trail/app/modules/add_product/domain/failures/value_object_failures.dart';
// import 'package:trail/app/modules/add_product/domain/validation/image_validator.dart';
// import 'package:trail/app/modules/add_product/domain/validation/list_of_5_validator.dart';

// // Picked Images List
// class Image extends ValueObject<AddProductValueFailures, Asset> {
//   Image._(this.value);
//   static const maxLength = 5;
//   @override
//   Either<AddProductValueFailures, Asset> value;
//   // List Length Validator
//   factory Image({required Asset listOfPickedImages}) {
//     return Image._(imagePickerValidator( image: listOfPickedImages));
//   }


//   // List Length
//   // 0 is empty or more than 5
//   int get length => value.getOrElse(() => [] ).length;

//   // Is List Full
//   bool isFull() => length == maxLength;
//   // Is Lest Empty
//   bool isEmpty() => length == 0;
  
// }
