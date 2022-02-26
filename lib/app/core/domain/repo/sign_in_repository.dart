import 'package:dartz/dartz.dart';
import 'package:get/get_connect/connect.dart';
import 'package:trail/app/core/domain/failures/server_failures/registration_server_failures.dart';
import 'package:trail/app/core/domain/value_object/email.dart';
import 'package:trail/app/core/domain/value_object/password.dart';

// Registration Repository
abstract class IRegistrationRepository extends GetConnect {
   // Sign Up With Email And Password
  Future<Either<RegistrationServerFailures, Unit>> signUpWithEmailAndPassword({
    required Email email,
    required Password password,
  });
  //  Sign In With Email And Password
  Future<Either<RegistrationServerFailures, Unit>> signInWithEnailAndPassword({
    required Email email,
    required Password password,
  });
  // Sign Out
  Future<void> signOut();
}
