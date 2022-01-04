import 'package:trail/app/modules/sign_in/domain/failures/value_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:trail/app/modules/sign_in/domain/validations/password_validation.dart';
import 'package:trail/app/modules/sign_in/domain/value_object.dart/value_object.dart';

// Password
class Password extends ValueObject {
   Password._(this.value);
  @override
  final Either<SignInValueFailures, String> value;
  factory Password({required password}){
    return Password._(passwordValidator(password:password));
  }
}
