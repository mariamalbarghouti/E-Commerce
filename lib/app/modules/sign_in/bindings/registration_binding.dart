import 'package:get/get.dart';
import 'package:trail/app/modules/sign_in/domain/repository/sign_in_repository.dart';
import 'package:trail/app/modules/sign_in/infrastracture/firebase_sign_in_repo_impl.dart';

import '../controllers/sign_in_controller.dart';

class RegistrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IRegistrationRepository>(() => FirebaseSignInRepoImp());
    // Get.lazyPut<SignedInUserService>(() => SignedInUserService());
    Get.lazyPut<SignInController>(
      () => SignInController(iSignInRepoitory: Get.find()),
    );
  }
}
