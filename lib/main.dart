import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trail/core/logger_mixin.dart';
import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: Routes.ADD_POST,
      logWriterCallback: Logger.write,
      getPages: AppPages.routes,
    ),
  );
}

