import 'package:get/get.dart';
import 'package:trail/app/modules/sign_up/domain/repository/repository.dart';
import 'package:trail/app/modules/sign_up/infrastracture/firebase_sign_up_repo_impl.dart';
import 'package:trail/core/services/get_user_sign_in_state_service.dart';

import '../controllers/sign_up_controller.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ISignUpRepository>(() => SignUpFirebaseRepositoryImp());
    Get.lazyPut<SignUpController>(
      () => SignUpController(
        signUpRepository: Get.find(),
      ),
    );
  }
}
