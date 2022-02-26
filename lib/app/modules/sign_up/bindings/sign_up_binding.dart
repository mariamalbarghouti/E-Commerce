import 'package:get/get.dart';
import 'package:trail/app/core/domain/repo/sign_in_repository.dart';
import 'package:trail/app/core/domain/repo/user_info_repo.dart';
import 'package:trail/app/core/infrastructure/firebase_sign_in_repo_impl.dart';
import 'package:trail/app/core/infrastructure/firebase_sign_up_repo_impl.dart';

import '../controllers/sign_up_controller.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    //  initialize firebase Authentication implementation
    Get.lazyPut<IRegistrationRepository>(() => FirebaseRegistrationRepoImp());
    //  initialize firebase User Info implementation
    Get.lazyPut<IUserInfoRepository>(() => FirebaseUserInfoRepositoryImp());

    //  initialize Sign Uo Controller
    Get.lazyPut<SignUpController>(
      () => SignUpController(
          signUpRepository: Get.find(), userInfoRepository: Get.find()),
    );
  }
}
