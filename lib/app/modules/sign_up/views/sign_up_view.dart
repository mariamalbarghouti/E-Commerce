import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sign_up_controller.dart';

// Sign UP View
class SignUpView extends GetView<SignUpController> {
  const SignUpView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
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
            ],
          ),
        ),
      ),
    );
  }
}
