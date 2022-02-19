import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trail/core/logger_mixin.dart';
import 'app/routes/app_pages.dart';

// Main Function
Future<void> main() async {
  // initializing ui
  WidgetsFlutterBinding.ensureInitialized();
  // initializing firebase
  await Firebase.initializeApp();
  Get.put<FirebaseAuth>(FirebaseAuth.instance, permanent: true);
  Get.put<FirebaseFirestore>(FirebaseFirestore.instance, permanent: true);
  // run app
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: (Get.find<FirebaseAuth>().currentUser?.uid == null)
          ? Routes.SIGN_IN
          : Routes.HOME,
      // initialRoute: Routes.SPLASH_SCREEN,
      // initialRoute: Routes.ADD_PRODUCT,
      // initialRoute: Routes.SIGN_IN,
      debugShowCheckedModeBanner: false,
      enableLog: true,
      logWriterCallback: Logger.write,
      getPages: AppPages.routes,
    ),
    // MaterialApp(
    //   title: 'Search Bar App',
    //   home: HomePage(),
    // ),
  );
}
