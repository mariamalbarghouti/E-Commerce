import 'package:get/get.dart';
import 'package:trail/app/modules/sign_in/domain/repository/sign_in_repository.dart';
import 'package:trail/app/modules/sign_in/services/firebase_sign_in_repo_impl.dart';

import '../controllers/sign_in_controller.dart';

class RegistrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ISignInRepoitory>(() => FirebaseSignInRepoImp());
    Get.lazyPut<SignInController>(
      () => SignInController(iSignInRepoitory: Get.find()),
    );
  }
}
