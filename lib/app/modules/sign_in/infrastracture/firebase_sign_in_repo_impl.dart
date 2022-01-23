import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:trail/app/core/domain/value_object/email.dart';
import 'package:trail/app/core/domain/value_object/password.dart';
import 'package:trail/app/modules/sign_in/domain/failures/server_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:trail/app/modules/sign_in/domain/repository/sign_in_repository.dart';

// Sign In Repository Implementation
class FirebaseSignInRepoImp extends ISignInRepoitory {
  final FirebaseAuth _firebaseAuth =Get.find();
  
  // TODO
  // i think i have to return right and left
  // to handle the issues if uid is null
  // TODO daeling with it in UI
  @override
  Future<Option<String>> getSignedInUserID() async {
    return optionOf(_firebaseAuth.currentUser?.uid);
  }

  // Sign In With Email And Password
  @override
  Future<Either<SignInServerFailures, Unit>> signInWithEnailAndPassword({
    required Email email,
    required Password password,
  }) async {
    try {
      return await _firebaseAuth
          .signInWithEmailAndPassword(
            // TODO Why get or else
            email: email.getOrElse(() => "Invalid Email"),
            password: password.getOrElse(() => "Invalide Password"),
          )
          .then((value) => right(unit));
      // Handling Exceptions
    } on FirebaseAuthException catch (e) {
      // User Not Found
      if (e.code == 'user-not-found') {
        return left(
          const SignInServerFailures.userNotFound(msg: "User Not Found"),
        );
        // User Diabled
      } else if (e.code == "user-disabled") {
        return left(
          const SignInServerFailures.userDisabled(msg: "User Disabled"),
        );
        // Invalid Email Or Wrong Password
      } else if (e.code == "invalid-email" || e.code == "wrong-password") {
        return left(
          const SignInServerFailures.invalidEmailOrPassword(
            msg: "InvalideEmailOrPassword",
          ),
        );
        // Server Error
      } else {
        return left(
            const SignInServerFailures.serverError(msg: "Server Error"));
      }
    }
  }
}
