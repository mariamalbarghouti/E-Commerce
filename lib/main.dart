import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trail/app/modules/sign_in/domain/repository/sign_in_repository.dart';
import 'package:trail/app/modules/sign_in/infrastracture/firebase_sign_in_repo_impl.dart';
import 'package:trail/core/logger_mixin.dart';
import 'app/routes/app_pages.dart';

// Main Function
void main() async {
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
  );
}

/// Function for if the user is signed In
/// go home
/// else
/// sign Up
// Future<String> whereToGo() async {
//   if (Get.find<FirebaseAuth>().currentUser?.uid == null) {
//     return Routes.SIGN_IN;
//   } else {
//     return Routes.HOME;
//   }
// }

// "Creates a value object": {
// 		"prefix": "vobj",
// 		"body": [
// 			"class $1 extends ValueObject<$2> {"
//     ],
// }

// "Value Object": {
//         "prefix": "vobj",
//         "body": [
//             "class ${1} extends ValueObject<${2}> {",
//             "  @override",
//             "  final Either <ValueFailure<${2}>, ${2}> value;",

//             "  factory ${1}(${2} input) {",
//             "    return ${1}._(",
//             "      // insert validation",
//             "    );",
//             "  }",

//             "  const ${1}._(this.value);",
//             "}"
//         ],
//         "description": "Value Object"
//     }