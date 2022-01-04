import 'package:trail/app/modules/sign_in/domain/failures/value_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:trail/app/modules/sign_in/domain/validations/email_validation.dart';
import 'package:trail/app/modules/sign_in/domain/value_object.dart/value_object.dart';

// Email Class
class Email extends ValueObject {
  Email._(this.value);
  @override
  final Either<SignInValueFailures, String> value;
  factory Email({required String email}){
    return Email._(emailValidator(email: email));
  }
}
