import 'package:trail/app/core/domain/validations/email_validation.dart';
import 'package:trail/app/core/domain/value_object/value_object.dart';
import 'package:trail/app/modules/sign_in/domain/failures/value_failures.dart';
import 'package:dartz/dartz.dart';

// Email Class
class Email extends ValueObject<SignInValueFailures,String> {
  Email._(this.value);
  @override
  final Either<SignInValueFailures, String> value;
  factory Email({required String email}){
    return Email._(emailValidator(email: email));
  }
}
