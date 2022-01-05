import 'package:dartz/dartz.dart';
import 'package:get/get_connect/connect.dart';
import 'package:trail/app/core/domain/value_object/email.dart';
import 'package:trail/app/core/domain/value_object/password.dart';
import 'package:trail/app/modules/sign_in/domain/failures/server_failures.dart';

// Sign In Repository
abstract class ISignInRepoitory extends GetConnect {
  Future<Either<SignInServerFailures, Unit>> signInWithEnailAndPassword({
    required Email email,
    required Password password,
  });
}
