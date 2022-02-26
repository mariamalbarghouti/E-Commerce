import 'package:dartz/dartz.dart';
import 'package:get/get_connect/connect.dart';
import 'package:trail/app/core/domain/value_object/email.dart';
import 'package:trail/app/core/domain/value_object/password.dart';
import 'package:trail/app/modules/sign_in/domain/failures/server_failures.dart';
import 'package:trail/app/modules/sign_up/domain/failures/server_failures.dart';

// Registration Repository
abstract class IRegistrationRepository extends GetConnect {
   // Sign Up With Email And Password
  Future<Either<SignUpServerFailures, Unit>> signUpWithEmailAndPassword({
    required Email email,
    required Password password,
  });
  //  Sign In With Email And Password
  Future<Either<SignInServerFailures, Unit>> signInWithEnailAndPassword({
    required Email email,
    required Password password,
  });
  // Sign Out
  Future<void> signOut();
}
