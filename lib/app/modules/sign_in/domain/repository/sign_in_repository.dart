import 'package:dartz/dartz.dart';
import 'package:get/get_connect/connect.dart';
import 'package:trail/app/modules/sign_in/domain/failures/server_failures.dart';
import 'package:trail/app/modules/sign_in/domain/value_object.dart/email.dart';
import 'package:trail/app/modules/sign_in/domain/value_object.dart/password.dart';

abstract class SignInRepoitory extends GetConnect {
  Future<Either<SignInServerFailures, Unit>> signInWithEnailAndPassword({
    required Email email,
    required Password password,
  });
}
