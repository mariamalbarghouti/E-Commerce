import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:trail/app/core/domain/repo/sign_in_repository.dart';
import 'package:trail/app/core/domain/value_object/email.dart';
import 'package:trail/app/core/domain/value_object/password.dart';
import 'package:trail/app/modules/sign_in/domain/failures/server_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:trail/app/modules/sign_up/domain/failures/server_failures.dart';

// Sign In Repository Implementation
class FirebaseRegistrationRepoImp extends IRegistrationRepository {
  final FirebaseAuth _firebaseAuth = Get.find();

  /// Sign In With Email And Password
  @override
  Future<Either<SignInServerFailures, Unit>> signInWithEnailAndPassword({
    required Email email,
    required Password password,
  }) async {
    try {
      return await _firebaseAuth
          .signInWithEmailAndPassword(
            email: email.getOrElse(() => "Invalid Email"),
            password: password.getOrElse(() => "Invalid Password"),
          )
          .then((value) => right(unit));
      // Handling Exceptions
    } on FirebaseAuthException catch (e) {
      // User Not Found
      if (e.code == 'user-not-found') {
        return left(const SignInServerFailures.userNotFound());
        // User Disabled
      } else if (e.code == "user-disabled") {
        return left(const SignInServerFailures.userDisabled());
        // Invalid Email Or Wrong Password
      } else if (e.code == "invalid-email" || e.code == "wrong-password") {
        return left(const SignInServerFailures.invalidEmailOrPassword());
        // Server Error
      } else {
        return left(
          SignInServerFailures.serverError(msg: "Server Error ${e.code}"),
        );
      }
    }
  }

  /// Sign Up Firebase Impl
  @override
  Future<Either<SignUpServerFailures, Unit>> signUpWithEmailAndPassword({
    required Email email,
    required Password password,
  }) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email.getOrElse(() => "Invalid Email"),
        password: password.getOrElse(() => "Invalid Password"),
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      // Email In Use
      if (e.code == 'email-already-in-use') {
        return left(
          const SignUpServerFailures.emailAlreadyInUse(),
        );
        // Invalid Email
      } else if (e.code == 'invalid-email') {
        return left(
          const SignUpServerFailures.invalidEmail(),
        );
        // Weak Password
      } else if (e.code == "weak-password") {
        return left(
          const SignUpServerFailures.weakPassword(),
        );
        // Else
      } else {
        return left(
          SignUpServerFailures.serverError(
            msg: "Server Error ${e.code}",
          ),
        );
      }
    }
  }

  /// Sign Out
  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
