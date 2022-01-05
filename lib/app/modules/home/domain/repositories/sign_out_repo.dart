import 'package:get/get.dart';

abstract class SignOutRepo extends GetConnect{
  Future<void> signOut();
}

  // @override
  // Future<Option<User>> getSignedInUser() async => _firebaseAuth
  //     .currentUser()
  //     .then((u) => optionOf(_firebaseUserMapper.toDomain(u)));
