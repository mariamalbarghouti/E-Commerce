import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:trail/z.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(
//         title: "Pagination",
//       ),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   String? title;

//   MyHomePage({
//     this.title,
//   });

//   HomePageController homePageController = Get.put(HomePageController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title!),
//       ),
//       body: GetBuilder(
//         init: homePageController,
//         builder: (value) => ListView.builder(
//           controller: homePageController.controller,
//           itemCount: homePageController.list.length,
//           itemBuilder: (context, index) {
//             return Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 color: Colors.red,
//                 height: 100,
//                 child: Center(
//                   child: Text(homePageController.list[index].name),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// class Model {
//   String name;

//   Model({
//     required this.name,
//   });
// }