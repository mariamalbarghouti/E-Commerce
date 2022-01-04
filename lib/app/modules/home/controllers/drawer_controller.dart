import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:trail/app/routes/app_pages.dart';

class AppDrawerController extends GetxController {
// Sigin Out
  signOut() async {
    await FirebaseAuth.instance.signOut();
    print("\n HH ${FirebaseAuth.instance.signOut()} \n");
    // TODO make it a middleware
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
        Get.toNamed(Routes.SIGNIN);
      } else {
        print('User is signed in!');
      }
    });
  }
}
