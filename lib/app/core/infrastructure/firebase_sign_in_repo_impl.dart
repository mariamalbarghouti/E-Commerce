import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:trail/app/core/domain/failures/server_failures/registration_server_failures/registration_server_failures.dart';
import 'package:trail/app/core/domain/repo/sign_in_repository.dart';
import 'package:trail/app/core/domain/value_object/email.dart';
import 'package:trail/app/core/domain/value_object/password.dart';
import 'package:dartz/dartz.dart';

// Sign In Repository Implementation
class FirebaseRegistrationRepoImp extends IRegistrationRepository {
  final FirebaseAuth _firebaseAuth = Get.find();

  /// Sign In With Email And Password
  @override
  Future<Either<RegistrationServerFailures, Unit>> signInWithEnailAndPassword({
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
        return left(const RegistrationServerFailures.userNotFound());
        // User Disabled
      } else if (e.code == "user-disabled") {
        return left(const RegistrationServerFailures.userDisabled());
        // Invalid Email Or Wrong Password
      } else if (e.code == "invalid-email" || e.code == "wrong-password") {
        return left(const RegistrationServerFailures.invalidEmailOrPassword());
        // Server Error
      } else {
        return left(
          RegistrationServerFailures.serverError(msg: "Server Error ${e.code}"),
        );
      }
    }
  }

  /// Sign Up Firebase Impl
  @override
  Future<Either<RegistrationServerFailures, Unit>> signUpWithEmailAndPassword({
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
          const RegistrationServerFailures.emailAlreadyInUse(),
        );
        // Invalid Email
      } else if (e.code == 'invalid-email') {
        return left(
          const RegistrationServerFailures.invalidEmail(),
        );
      //   // Weak Password
      // } else if (e.code == "weak-password") {
      //   return left(
      //     const SignUpServerFailures.weakPassword(),
      //   );
        // Else
      } else {
        return left(
          RegistrationServerFailures.serverError(
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
