import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
// GEt Signed In User Info
class GetSignedInUser extends GetxService {
  final _storage = GetStorage();
  // getter for user
  bool get getIsUserSignedIn => _storage.read('isSignedIn') ?? false;
  // InsertToLocal DB 
  void isUserSignedIn({required bool isSignedIn}) {
     _storage.write('isSignedIn', isSignedIn);
  }
}
