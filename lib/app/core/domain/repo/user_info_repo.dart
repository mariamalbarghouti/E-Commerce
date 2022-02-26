import 'package:dartz/dartz.dart';
import 'package:trail/app/core/domain/failures/server_failures/registration_server_failures.dart';

/// Sign Up Repository
abstract class IUserInfoRepository {
  // Send User Info to DB
  Future< Either<RegistrationServerFailures,Unit>> registerUserInfoToFirestore({
    required String email,
    required String password,
  });
}
