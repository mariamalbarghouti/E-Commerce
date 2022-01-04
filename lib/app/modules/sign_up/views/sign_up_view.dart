import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Sign Up'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child:  Form(
            key: controller.registrationKey,
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
                  onPressed: () async=>await  controller.signIn(),
                  child: const Text("Sign In"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
