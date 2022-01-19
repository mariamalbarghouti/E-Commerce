import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:trail/app/core/domain/value_object/value_object.dart';
import 'package:trail/app/modules/add_product/domain/failures/value_object_failures.dart';

// Photo Picker
class PhotoPicker extends ValueObject<AddProductValueFailures, File?> {
  PhotoPicker._(this.value);
  @override
  final Either<AddProductValueFailures, File?> value;
  // For Photo Validation
  // factory PhotoPicker({required String? photo}) {
  //   return PhotoPicker._(pickImageValidator(photo: photo));
  // }
}
