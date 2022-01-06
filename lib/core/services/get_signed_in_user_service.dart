import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

// GEt Signed In User Info
class SignedInUserService extends GetxService {
  final _storage = GetStorage();
  // getter for user
  bool get getIsUserOut => _storage.read('isSignedIn') ?? false;
  // InsertToLocal DB
  void isUserOut({required bool isUserOut}) {
    _storage.write('isSignedIn', isUserOut);
  }
}
