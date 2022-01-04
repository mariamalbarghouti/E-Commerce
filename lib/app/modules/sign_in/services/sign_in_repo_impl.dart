import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:trail/app/modules/sign_in/domain/failures/server_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:trail/app/modules/sign_in/domain/repository/sign_in_repository.dart';
import 'package:trail/app/modules/sign_in/domain/value_object.dart/password.dart';
import 'package:trail/app/modules/sign_in/domain/value_object.dart/email.dart';

// Sign In Repository Implementation
class SignInRepoImp extends SignInRepoitory {
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  @override
  Future<Either<SignInServerFailures, Unit>> signInWithEnailAndPassword({
    required Email email,
    required Password password,
  }) async {
    try {
      return await firebaseAuth
          .signInWithEmailAndPassword(
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
