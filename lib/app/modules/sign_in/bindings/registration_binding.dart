import 'package:get/get.dart';
import '../../../core/domain/repo/sign_in_repository.dart';
import '../../../core/infrastructure/firebase_sign_in_repo_impl.dart';

import '../controllers/sign_in_controller.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    // Registration For Sign In
    Get.lazyPut<IRegistrationRepository>(() => FirebaseRegistrationRepoImp());
    // SignInBinding
    Get.lazyPut<SignInController>(
      () => SignInController(iSignInRepository: Get.find()),
    );
  }
}
