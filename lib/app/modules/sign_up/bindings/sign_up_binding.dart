import 'package:get/get.dart';
import 'package:trail/app/modules/sign_up/domain/repository/repository.dart';
import 'package:trail/app/modules/sign_up/infrastracture/firebase_sign_up_repo_impl.dart';

import '../controllers/sign_up_controller.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    //  initialize firebase implementation
    Get.lazyPut<ISignUpRepository>(() => SignUpFirebaseRepositoryImp());
    //  initialize Sign Uo Controller
    Get.lazyPut<SignUpController>(
      () => SignUpController(signUpRepository: Get.find()),
    );
  }
}
