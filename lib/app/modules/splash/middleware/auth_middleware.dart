import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trail/app/modules/splash/services/get_signed_in_user_repo_impl.dart';
import 'package:trail/app/routes/app_pages.dart';

// Auth Middleware
// if the user is not signed in
// go to sign in page
// else
// go to home page
class AuthMiddleware extends GetMiddleware {
  // Proirity
  @override
  int? get priority => 1;
  // ReDirecte Page
  @override
  RouteSettings? redirect(String? route) { 
    // whereToGo();
  return super.redirect(route);
  }
 

  // @override
  // Future<GetNavConfig?> redirectDelegate(GetNavConfig route) async {
  //   GetSignedInUserInfoRepoImp _sigenedInUser = GetSignedInUserInfoRepoImp();
  //   // log("message ${await _sigenedInUser.isUserSignedIn()}");
  //   if ( await _sigenedInUser.isUserSignedIn()) {
  //     print("\nhi\n");
  //     return Get.rootDelegate.toNamed(Routes.HOME);
  //     // return GetNavConfig.fromRoute(Routes.HOME);
  //   } else {
  //     // return GetNavConfig.fromRoute(Routes.SIGN_IN);
  //     return Get.rootDelegate.toNamed(Routes.SIGN_IN);
  //   }
  // }
}
