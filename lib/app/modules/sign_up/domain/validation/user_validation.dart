import 'package:dartz/dartz.dart';
import 'package:trail/app/modules/sign_up/domain/failures/value_failures.dart';

// TODO not rational
Either<SignUpValueFailures, String> userValidation({required String? userId}) {
  if (userId == null) {
    return left(const SignUpValueFailures.nullUser(msg: "No User"));
  } else {
    return right(userId);
  }
}
