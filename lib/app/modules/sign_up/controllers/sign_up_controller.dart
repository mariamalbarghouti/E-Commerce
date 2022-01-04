import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
  // void increment() => count.value++;

  signUp(){}
}
