import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:trail/app/modules/splash/domain/failures/server_failures.dart';

// Get Signed In User
// Service to be saved locally
// TODO make it GetConnection and turn wifi off
abstract class GetSignedInUserInfoRepo extends GetxService {
  // Either<GetSignedInUserServerFailure, User>
  Future<bool> isUserSignedIn();
}