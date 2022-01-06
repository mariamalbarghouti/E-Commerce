import 'package:get/get.dart';

abstract class ISignOutRepo extends GetConnect{
  Future<void> signOut();
  Future<bool>  isUserOut();
}
