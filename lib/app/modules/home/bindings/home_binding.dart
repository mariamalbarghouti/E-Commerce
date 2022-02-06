import 'package:get/get.dart';
import 'package:trail/app/modules/home/domain/repositories/sign_out_repo.dart';
import 'package:trail/app/modules/home/infrastracture/home_repo_firestore_impl.dart';
// import 'package:trail/app/modules/home/services/sign_out.dart';

import '../controllers/home_controller.dart';

// Home Binding
class HomeBinding extends Bindings {
  @override
  void dependencies() async {
    // Home Repository
    Get.lazyPut<IHomeRepository>(
      () => HomeRepoFirebaseImplimentation(),
    );
    // Home Controller
    Get.lazyPut<HomeController>(
      () => HomeController(homeRepository: Get.find()),
    );
  }
}
