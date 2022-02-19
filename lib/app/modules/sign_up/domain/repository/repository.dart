import 'package:dartz/dartz.dart';
import 'package:trail/app/core/domain/value_object/email.dart';
import 'package:trail/app/core/domain/value_object/password.dart';
import 'package:trail/app/modules/sign_up/domain/failures/server_failures.dart';

/// Sign Up Repository
abstract class ISignUpRepository {
  // Sign Up With Email And Password
  Future<Either<SignUpServerFailures, Unit>> signUpWithEmailAndPassword({
    required Email email,
    required Password password,
  });

  // Send User Info to DB
  Future< Either<SignUpServerFailures,Unit>> registerUserInfoToFirestore({
    required String email,
    required String password,
  });
}
