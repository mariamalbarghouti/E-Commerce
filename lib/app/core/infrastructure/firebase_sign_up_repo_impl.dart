import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:trail/app/core/domain/repo/user_info_repo.dart';
import 'package:trail/app/core/infrastructure/firebase_helper.dart';
import 'package:trail/app/modules/sign_up/domain/failures/server_failures.dart';
import 'package:dartz/dartz.dart';

// User Info Repository Imp
class FirebaseUserInfoRepositoryImp extends IUserInfoRepository {
  final FirebaseAuth _firebaseAuth = Get.find();


  // Saving User To DB
  @override
  Future<Either<SignUpServerFailures, Unit>> registerUserInfoToFirestore({
    // required uid,
    required String email,
    required String password,
  }) async {
    try {
      DocumentReference _userDocument =
          await Get.find<FirebaseFirestore>().userDocument;
      return _userDocument.set({
        "uid": _firebaseAuth.currentUser?.uid,
        "email": email,
        "password": password,
      }).then((value) => right(unit));
    } catch (e) {
      return left(
        SignUpServerFailures.serverError(msg: "Failed to add user: $e"),
      );
    }
  }
}
