import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trail/app/modules/sign_in/controllers/sign_in_controller.dart';
import 'package:trail/app/routes/app_pages.dart';

// Sign In Body
class SigInBody extends GetView<SignInController> {
  const SigInBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Form(
          key: controller.signInKey,
          child: Column(
            children: [
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
                textInputAction: TextInputAction.done,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (_) => controller.passwordValidation(),
              ),
              // Sign In Button
              ElevatedButton(
                onPressed: () async => await controller.signIn(),
                child: const Text("Sign In"),
              ),
              // Sign Up Button
              TextButton(
                onPressed: () => Get.offAllNamed(Routes.SIGN_UP),
                child: const Text("Create An Account"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
