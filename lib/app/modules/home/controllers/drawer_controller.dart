import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:trail/app/routes/app_pages.dart';

// App Drawer Controller
class AppDrawerController extends GetxController {
// Sigin Out
  signOut() async {
    await FirebaseAuth.instance.signOut();
    // TODO make it a middleware
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
        Get.toNamed(Routes.SIGN_IN);
      } else {
        print('User is signed in!');
      }
    });
  }
}
