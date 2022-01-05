import 'package:dartz/dartz.dart';
import 'package:trail/app/modules/sign_in/domain/failures/value_failures.dart';


// Password Validator
Either<SignInValueFailures, String> passwordValidator(
    {required String password}) {
  if (password.trim().isEmpty) {
    return left(const SignInValueFailures.enterYourPassword(
        msg: "Please Enter Your Password"));
  } else if (password.length < 6) {
    return left(const SignInValueFailures.enterStrongerPassword(
        msg: "Please Enter An Stronger Password"));
  } else {
    return right(password);
  }
}
