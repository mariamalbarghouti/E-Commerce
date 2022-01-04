import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:trail/app/modules/domain/failures/value_object_failures.dart';

// Image Validator
Either<PickImageValueFailures, File?> pickImageValidator({required String? photo}) {
  if (photo != null && photo.isNotEmpty) {
    return right(File(photo));
  } else {
    return left(
     const PickImageValueFailures.enterImage(msg: "please_enter_your_logo"),
    );
  }
}

