import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trail/core/logger_mixin.dart';
import 'package:trail/core/services/get_signed_in_user_repo_impl.dart';
import 'app/routes/app_pages.dart';

void main() async {
  // initializing ui
  WidgetsFlutterBinding.ensureInitialized();
  // initializing firebase
  await Firebase.initializeApp();
  // where to go
  await whereToGo();
  // run app
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: Routes.SPLASH,
      debugShowCheckedModeBanner: false,
      enableLog: true,
      logWriterCallback: Logger.write,
      getPages: AppPages.routes,
    ),
  );
}

/// Function for if the user is signed In
/// go home
/// else
/// sign Up
Future<void> whereToGo() async {
  print('starting services ...');
  if (await Get.putAsync(() => GetSignedInUser().isUserSignedIn())) {
    Get.offAllNamed(Routes.HOME);
  } else {
    Get.offAllNamed(Routes.SIGN_IN);
  }
}
