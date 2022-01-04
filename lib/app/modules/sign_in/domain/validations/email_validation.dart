import 'package:dartz/dartz.dart';
import 'package:trail/app/modules/sign_in/domain/failures/value_failures.dart';

// Email Validator
Either<SignInValueFailures, String> emailValidator({required String email}) {
  const String regex =
       r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (email.trim().isEmpty) {
    return  left(const SignInValueFailures.enterYourEmail(
        msg: "Please Enter Your Password"));
  } else if (!RegExp(regex).hasMatch(email)) {
    return left(const SignInValueFailures.enterValidEmail(msg: "Please Enter A Valid Email"));
  }else{
    return right(email);
  }
}
