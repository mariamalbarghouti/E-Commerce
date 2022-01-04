import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trail/app/modules/sign_in/domain/value_object.dart/email.dart';
import 'package:trail/app/modules/sign_in/domain/value_object.dart/password.dart';
import 'package:trail/app/modules/sign_in/services/sign_in_repo_impl.dart';
import 'package:trail/app/routes/app_pages.dart';

class SignInController extends GetxController {
  // Email Controller
  late Rx<TextEditingController> emailEditionController;
  // Password Controller
  late Rx<TextEditingController> passwordEditionController;
  // Form Key
  GlobalKey<FormState> signInKey = GlobalKey<FormState>();

  @override
  void onInit() {
    emailEditionController = TextEditingController().obs;
    passwordEditionController = TextEditingController().obs;
    super.onInit();
  }

  @override
  void onClose() {
    emailEditionController.value.dispose();
    passwordEditionController.value.dispose();
  }

  // Email Validation
  String? emailValidation() =>
      Email(email: emailEditionController.value.text).value.fold(
            (l) => l.msg,
            (r) => null,
          );

  // Password Validation
  String? passwordValidation() =>
      Password(password: passwordEditionController.value.text).value.fold(
            (l) => l.msg,
            (r) => null,
          );

  // sign In
  Future<void> signIn() async {
    if (signInKey.currentState?.validate() ?? false) {
      SignInRepoImp repoImp = SignInRepoImp();
      await repoImp
          .signInWithEnailAndPassword(
            email: Email(
              email: emailEditionController
                  .value.text, //"mariam@gmail.com",
            ),
            password: Password(
              password: passwordEditionController
                  .value.text, //"123456",
            ),
          )
          .then(
            (value) => value.fold(
              (l) => Get.snackbar(
                "Sign In",
                l.msg,
                snackPosition: SnackPosition.BOTTOM,
              ),
              (r) => Get.offAllNamed(Routes.HOME),
            ),
          );
    }
  }
}
