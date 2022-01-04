import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trail/core/logger_mixin.dart';
import 'package:trail/injection.dart';
import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // For API Dependency Injection
  configureDependencies();
  runApp(
    GetMaterialApp(
      title: "Application",
      // initialRoute: AppPages.INITIAL,
      initialRoute: Routes.SIGN_UP,
      logWriterCallback: Logger.write,
      getPages: AppPages.routes,
    ),
  );
}
