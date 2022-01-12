import 'package:get/get.dart';
import 'package:trail/app/modules/home/controllers/drawer_controller.dart';
import 'package:trail/app/modules/home/domain/repositories/sign_out_repo.dart';
import 'package:trail/app/modules/home/services/sign_out.dart';
import 'package:trail/core/services/get_user_sign_in_state_service.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut<SignedInUserService>(
      () => SignedInUserService(),
    );
    Get.lazyPut<ISignOutRepo>(
      () => FirebaseSignOutRepoImpl(),
    );
    Get.lazyPut<AppDrawerController>(
      () => AppDrawerController(
        signedInUserRepo: Get.find(),
        signedInUserService: Get.find(),
      ),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
