
import 'package:dartz/dartz.dart';
import 'package:trail/app/modules/sign_up/domain/failures/value_failures.dart';


// Name Validator
Either<SignUpValueFailures, String> nameValidation({required String name}) {
   if (name.trim().isEmpty) {
    return  left(const SignUpValueFailures.emptyName(
        msg: "Please Enter Your Name"));
  } else if (name.trim().length<2) {
    return left(const SignUpValueFailures.enterAValidName(msg: "Please Enter A Valid Name"));
  }else{
    return right(name);
  }
}
