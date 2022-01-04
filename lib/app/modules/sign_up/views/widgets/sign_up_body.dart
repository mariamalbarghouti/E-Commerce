import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trail/app/modules/sign_up/controllers/sign_up_controller.dart';
import 'package:trail/app/routes/app_pages.dart';

// Sign Up Body
class SignUpBody extends GetView<SignUpController> {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Form(
          key: controller.registrationKey,
          child: Column(
            children: [
              // Name
              TextFormField(
                controller: controller.nameEditionController.value,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  labelText: "Name",
                ),
                validator: (_) => controller.nameValidation(),
                textInputAction: TextInputAction.next,
              ),
              // Email
              TextFormField(
                controller: controller.emailEditionController.value,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  labelText: "Email",
                ),
                validator: (_) => controller.emailValidation(),
                textInputAction: TextInputAction.next,
              ),
              // Password
              TextFormField(
                controller: controller.passwordEditionController.value,
                decoration: const InputDecoration(
                  labelText: "Password",
                ),
                textInputAction: TextInputAction.next,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (_) => controller.passwordValidation(),
              ),
              // Conirm Password
              TextFormField(
                controller: controller.confirmPasswordEditionController.value,
                decoration: const InputDecoration(
                  labelText: "Confirm Password",
                ),
                textInputAction: TextInputAction.done,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (_) => controller.confirmPasswordValidation(),
              ),
              // Sign In Button
              ElevatedButton(
                onPressed: () async => await controller.signUp(),
                child: const Text("Sign Up"),
              ),
              // Sign In Button
              TextButton(
                onPressed: () => Get.offAllNamed(Routes.SIGN_IN),
                child: const Text("Already Have An Account"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
