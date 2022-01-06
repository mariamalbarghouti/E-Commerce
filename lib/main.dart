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
  String _whereRoGo = await whereToGo();
  // run app
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: _whereRoGo,
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
Future<String> whereToGo() async {
  if (await Get.put(GetSignedInUser().getIsUserSignedIn)) {
    return Routes.HOME;
  } else {
    return Routes.SIGN_IN;
  }
}
