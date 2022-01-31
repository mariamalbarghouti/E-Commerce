import 'package:get/get.dart';
import 'package:trail/app/modules/home/controllers/drawer_controller.dart';
import 'package:trail/app/modules/home/domain/repositories/sign_out_repo.dart';
import 'package:trail/app/modules/home/infrastracture/home_repo_firestore_impl.dart';
// import 'package:trail/app/modules/home/services/sign_out.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() async {
    // Get.lazyPut<SignedInUserService>(
    //   () => SignedInUserService(),
    // );
    // Get.lazyPut<ISignOutRepo>(
    //   () => FirebaseSignOutRepoImpl(),
    // );
    // Get.lazyPut<AppDrawerController>(
    //   () => AppDrawerController(
    //     signedInUserRepo: Get.find(),
    //     // signedInUserService: Get.find(),
    //   ),
    // );
    Get.lazyPut<IHomeRepository>(
      () => HomeRepoFirebaseImplimentation(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(homeRepository: Get.find()),
    );
  }
}
