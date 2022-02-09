import 'package:get/get.dart';
import 'package:trail/app/modules/home/domain/repositories/sign_out_repo.dart';
import 'package:trail/app/modules/home/infrastracture/home_repo_firestore_impl.dart';
import '../controllers/home_controller.dart';

// Home Binding
class HomeBinding extends Bindings {
  @override
  void dependencies() async {
    // Home Repository
    Get.put<IHomeRepository>(
      HomeRepoFirebaseImplimentation(),
      permanent: true,
    );
    // Home Controller
    Get.put<HomeController>(
      HomeController(homeRepository: Get.find()),
      permanent: true,
    );
  }
}
