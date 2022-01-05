import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:trail/app/modules/sign_up/domain/failures/server_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:trail/app/modules/sign_up/domain/repository/repository.dart';
import 'package:trail/core/domain/value_object/email.dart';
import 'package:trail/core/domain/value_object/password.dart';

// Sign Up Repository Imp
class FirebaseSignUpRepository extends ISignUpRepository {
  @override
  Future<Either<SignUpServerFailures, Unit>> signUpWithEmailAndPassword({
    required Email email,
    required Password password,
  }) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.getOrElse(() => "Invalid Email"),
        password: password.getOrElse(() => "Invalid Password"),
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      // Email In Use
      if (e.code == 'email-already-in-use') {
        return left(
          const SignUpServerFailures.emailAlreadyInUse(
            msg: "Email Already In Use",
          ),
        );
        // Invalid Email
      } else if (e.code == 'invalid-email') {
        return left(
          const SignUpServerFailures.invalidEmail(
            msg: "Invalid Email",
          ),
        );
        // Weak Password
      } else if (e.code == "weak-password") {
        return left(
          const SignUpServerFailures.weakPassword(
            msg: "Weak Password",
          ),
        );
        // Else
      } else {
        return left(
          const SignUpServerFailures.serverError(
            msg: "Server Error",
          ),
        );
      }
    }
  }
  // Saving User To DB
  @override
  Future<Either<SignUpServerFailures, Unit>> registerUserInfoToFirestore({
    required uid,
    required String email,
    required String password,
  }) async {
    try {
      DocumentReference users =
          FirebaseFirestore.instance.collection('users').doc("$uid");
      return await users.set({
        "uid": uid,
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
