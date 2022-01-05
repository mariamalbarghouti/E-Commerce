import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

// GEt Signed In User Info
class GetSignedInUser extends GetxService {
  Future<bool> isUserSignedIn() async {
    var _isUserFound = Completer<bool>();
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      // print("'user :$user ,email: ${user?.email}, uid ${user?.uid}");
      if (user == null) {
        _isUserFound.complete(false);
      } else {
        _isUserFound.complete(true);
      }
    });
    return _isUserFound.future;
  }
}
