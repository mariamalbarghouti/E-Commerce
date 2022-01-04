import 'package:get/get.dart';

abstract class SignOutRepo extends GetConnect{
  Future<void> signOut();
}