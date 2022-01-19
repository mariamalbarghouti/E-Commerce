
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trail/core/logger_mixin.dart';
import 'package:trail/core/services/get_user_sign_in_state_service.dart';
import 'app/routes/app_pages.dart';

// Main Function
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
      // initialRoute: _whereRoGo,
      initialRoute: Routes.ADD_POST,
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
  if (await Get.put(SignedInUserService()).getIsUserOut) {
    return Routes.SIGN_IN;
  } else {
    return Routes.HOME;
  }
}

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