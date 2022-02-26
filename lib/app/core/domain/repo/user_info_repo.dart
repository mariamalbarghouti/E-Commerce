import 'package:dartz/dartz.dart';
import 'package:trail/app/modules/sign_up/domain/failures/server_failures.dart';

/// Sign Up Repository
abstract class IUserInfoRepository {
  // Send User Info to DB
  Future< Either<SignUpServerFailures,Unit>> registerUserInfoToFirestore({
    required String email,
    required String password,
  });
}
