import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
// TODO get ride of this crim
// GEt Signed In User Info
class SignedInUserService extends GetxService {
  // getter for user
  Future<bool> get getIsUserOut async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return (prefs.getBool('isSignedOut') ?? false);
  }

  // InsertToLocal DB
  void isUserOut({required bool isUserOut}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isSignedOut', isUserOut);
  }
}
