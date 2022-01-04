import 'package:flutter/material.dart';
import 'package:trail/app/modules/sign_up/views/widgets/sign_up_body.dart';

// Sign UP View
class SignUpView extends StatelessWidget {
  const SignUpView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        title: const Text('Sign Up'),
        centerTitle: true,
      ),
      // Body
      body: const SignUpBody(),
    );
  }
}
