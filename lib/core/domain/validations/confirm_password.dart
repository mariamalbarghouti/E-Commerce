
import 'package:dartz/dartz.dart';
import 'package:trail/app/modules/sign_up/domain/failures/value_failures.dart';


// Confirm Password
Either<SignUpValueFailures,String> confirmPassword({
  required String currentPassword,
  required String previousPassword,
}) {
  if (currentPassword != previousPassword) {
    return left(
      const SignUpValueFailures.passwordDoesNotMath(
        msg: "Your Password Does Not Match",
      ),
    );
  }else{
    return right(currentPassword);
  }
}
