import 'package:get/get.dart';
import 'package:trail/app/modules/sign_up/domain/repository/repository.dart';
import 'package:trail/app/modules/sign_up/services/firebase_sign_up_repo_impl.dart';
import 'package:trail/core/services/get_signed_in_user_service.dart';

import '../controllers/sign_up_controller.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ISignUpRepository>(() => FirebaseSignUpRepository());
    Get.lazyPut<SignedInUserService>(() => SignedInUserService());
    Get.lazyPut<SignUpController>(
      () => SignUpController(
        signUpRepository: Get.find(),
        getSignedInUserService: Get.find(),
      ),
    );
  }
}
