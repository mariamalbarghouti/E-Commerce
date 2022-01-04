import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trail/app/modules/sign_up/domain/value_object/user_name.dart';
import 'package:trail/app/modules/sign_up/services/sign_up_repo_impl.dart';
import 'package:trail/app/routes/app_pages.dart';
import 'package:trail/core/domain/value_object/confirm_password.dart';
import 'package:trail/core/domain/value_object/email.dart';
import 'package:trail/core/domain/value_object/password.dart';

// Sign Up Controller
class SignUpController extends GetxController {
  // Name Controller
  late Rx<TextEditingController> nameEditionController;
  // Email Controller
  late Rx<TextEditingController> emailEditionController;
  // Password Controller
  late Rx<TextEditingController> passwordEditionController;
  // Confirm Password Controller
  late Rx<TextEditingController> confirmPasswordEditionController;
  // Form Key
  GlobalKey<FormState> registrationKey = GlobalKey<FormState>();

  @override
  void onInit() {
    // Name Controller
    nameEditionController = TextEditingController().obs;
    // Email Controller
    emailEditionController = TextEditingController().obs;
    // Password Controller
    passwordEditionController = TextEditingController().obs;
    // Confirm Password Controller
    confirmPasswordEditionController = TextEditingController().obs;
    super.onInit();
  }

  @override
  void onClose() {
    nameEditionController.value.dispose();
    // Email Controller
    emailEditionController.value.dispose();
    // Password Controller
    passwordEditionController.value.dispose();
    // Confirm Password Controller
    confirmPasswordEditionController.value.dispose();
  }

  // Name Validation
  String? nameValidation() {
    return UserName(
      name: nameEditionController.value.text,
    ).value.fold(
          (l) => l.msg,
          (r) => null,
        );
  }

  // Email Validation
  String? emailValidation() {
    return Email(email: emailEditionController.value.text).value.fold(
          (l) => l.msg,
          (r) => null,
        );
  }

  // Password Validation
  String? passwordValidation() {
    return Password(password: passwordEditionController.value.text).value.fold(
          (l) => l.msg,
          (r) => null,
        );
  }

  // Confirm Password Validation
  String? confirmPasswordValidation() {
    return ConfirmPassword(
      currentPassword: confirmPasswordEditionController.value.text,
      previousPassword: passwordEditionController.value.text,
    ).value.fold(
          (l) => l.msg,
          (r) => null,
        );
  }

  // Sign Up
  signUp() async {
    if (registrationKey.currentState?.validate() ?? false) {
      SignUpRepositoryImp repoImp = SignUpRepositoryImp();
      await repoImp
          .signUpWithEmailAndPassword(
        email: Email(
          email: emailEditionController.value.text, //"mariam@gmail.com",
        ),
        password: Password(
          password: passwordEditionController.value.text, //"123456",
        ),
      )
          .then(
        (value) async {
          // Register his data to firebase
          await repoImp
              .registerUserInfoToFirestore(
                email: emailEditionController.value.text,
                password: passwordEditionController.value.text,
                uid: FirebaseAuth.instance.currentUser?.uid,
              )
              .then(
                (value) => value.fold(
                  (l) => Get.snackbar(
                    "Sign Up",
                    l.msg,
                    snackPosition: SnackPosition.BOTTOM,
                  ),
                  (r) => r,
                ),
              );
          // Response to UI
          return value.fold(
            (l) => Get.snackbar(
              "Sign Up",
              l.msg,
              snackPosition: SnackPosition.BOTTOM,
            ),
            (r) => Get.offAllNamed(Routes.HOME),
          );
        },
      );
    }
  }
}
