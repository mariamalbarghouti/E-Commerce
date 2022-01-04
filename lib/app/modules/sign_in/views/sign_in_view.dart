import 'package:flutter/material.dart';
import 'package:trail/app/modules/sign_in/views/widgets/sign_in_body.dart';

// Sign In View
class SignInView extends StatelessWidget {
  const SignInView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        title: const Text('Sign In'),
        centerTitle: true,
      ),
      // Body
      body: const SigInBody(),
    );
  }
}
