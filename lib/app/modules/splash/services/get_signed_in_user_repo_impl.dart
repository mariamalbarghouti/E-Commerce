import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:trail/app/modules/splash/domain/repositories/get_sign_in_user_info.dart';

// GEt Signed In User Info
class GetSignedInUserInfoRepoImp extends GetSignedInUserInfoRepo {
  @override
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
