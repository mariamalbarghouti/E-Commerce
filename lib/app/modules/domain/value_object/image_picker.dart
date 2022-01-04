import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:trail/app/modules/domain/failures/value_object_failures.dart';
import 'package:trail/app/modules/domain/validation/pick_image_logo_validator.dart';
import 'package:trail/core/domain/value_object/value_object.dart';

// Photo Picker
class PhotoPicker extends ValueObject<PickImageValueFailures, File?> {
  PhotoPicker._(this.value);
  @override
  final Either<PickImageValueFailures, File?> value;
  // For Photo Validation
  factory PhotoPicker({required String? photo}) {
    return PhotoPicker._(pickImageValidator(photo: photo));
  }
}
