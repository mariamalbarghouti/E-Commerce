import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trail/app/core/domain/value_object/confirm_password.dart';
import 'package:trail/app/core/domain/value_object/email.dart';
import 'package:trail/app/core/domain/value_object/password.dart';
import 'package:trail/app/modules/sign_up/domain/repository/repository.dart';
import 'package:trail/app/modules/sign_up/domain/value_object/user_name.dart';
import 'package:trail/app/routes/app_pages.dart';

// Sign Up Controller
class SignUpController extends GetxController {
  SignUpController({
    required this.signUpRepository,
    // required this.getSignedInUserService,
  });
  final ISignUpRepository signUpRepository;
  // final SignedInUserService getSignedInUserService;
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
      // Register With Email And Password
      await signUpRepository
          .signUpWithEmailAndPassword(
        email: Email(email: emailEditionController.value.text),
        password: Password(password: passwordEditionController.value.text),
      )
          .then((value) async {
        value.fold(
            // Error Occures
            (l) => Get.snackbar(
                  "Error",
                  l.msg,
                  snackPosition: SnackPosition.BOTTOM,
                ),
            // Register his data to firebase
            (r) async {
          await signUpRepository
              .registerUserInfoToFirestore(
                email: emailEditionController.value.text,
                password: passwordEditionController.value.text,
                // uid: Get.find<FirebaseAuth>().currentUser?.uid,
              )
              .then(
                (value) => value.fold(
                  (l) => Get.snackbar(
                    "Sign Up",
                    l.msg,
                    snackPosition: SnackPosition.BOTTOM,
                  ),
                  (r) {
                    Get.snackbar(
                      "Sign Up",
                      "You Have Created An Account Sucessfully",
                      snackPosition: SnackPosition.BOTTOM,
                    );
                    return Get.offAllNamed(Routes.HOME);
                  },
                ),
              );
        });
      });
    }
  }
}
