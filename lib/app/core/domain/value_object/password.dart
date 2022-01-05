import 'package:trail/app/core/domain/validations/password_validation.dart';
import 'package:trail/app/core/domain/value_object/value_object.dart';
import 'package:trail/app/modules/sign_in/domain/failures/value_failures.dart';
import 'package:dartz/dartz.dart';

// Password
class Password extends ValueObject<SignInValueFailures,String> {
  Password._(this.value);
  @override
  Either<SignInValueFailures, String> value;
  factory Password({required password}) {
    return Password._(passwordValidator(password: password));
  }
}
