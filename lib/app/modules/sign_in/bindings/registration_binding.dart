import 'package:get/get.dart';
import '../../../core/domain/repo/sign_in_repository.dart';
import '../../../core/infrastructure/firebase_sign_in_repo_impl.dart';

import '../controllers/sign_in_controller.dart';

class RegistrationBinding extends Bindings {
  @override
  void dependencies() {
    // Sign In 
    Get.lazyPut<IRegistrationRepository>(() => FirebaseRegistrationRepoImp());
    Get.lazyPut<SignInController>(
      () => SignInController(iSignInRepository: Get.find()),
    );
  }
}
