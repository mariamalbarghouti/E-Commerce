import 'package:trail/app/modules/sign_in/domain/failures/value_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:trail/app/modules/sign_up/domain/failures/value_failures.dart';
import 'package:trail/core/domain/validations/confirm_password.dart';
import 'package:trail/core/domain/value_object/value_object.dart';

// Confirm Password Class
class ConfirmPassword extends ValueObject<SignUpValueFailures,String> {
  ConfirmPassword._(this.value);
  @override
  final Either<SignUpValueFailures, String> value;
  factory ConfirmPassword({
    required String currentPassword,
    required String previousPassword,
  }) {
    return ConfirmPassword._(
      confirmPassword(
        currentPassword: currentPassword,
        previousPassword: previousPassword,
      ),
    );
  }
}
