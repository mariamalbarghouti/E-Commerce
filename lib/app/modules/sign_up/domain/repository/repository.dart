import 'package:dartz/dartz.dart';
import 'package:trail/app/modules/sign_up/domain/failures/server_failures.dart';
import 'package:trail/core/domain/value_object/email.dart';
import 'package:trail/core/domain/value_object/password.dart';

/// Sign Up Repository
abstract class ISignUpRepository {
  Future<Either<SignUpServerFailures, Unit>> signUpWithEmailAndPassword({
    required Email email,
    required Password password,
  });
  // TODO
Future< Either<SignUpServerFailures,Unit>> registerUserInfoToFirestore({
    required uid,
    required String email,
    required String password,
  });
}
