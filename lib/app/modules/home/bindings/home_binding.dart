import 'package:get/get.dart';
import 'package:trail/app/modules/home/controllers/drawer_controller.dart';
import 'package:trail/app/modules/home/domain/repositories/sign_out_repo.dart';
import 'package:trail/app/modules/home/infrastracture/home_repo_firestore_impl.dart';
import '../controllers/home_controller.dart';

// Home Binding
class HomeBinding extends Bindings {
  @override
  void dependencies() async {
  
    Get.lazyPut<AppDrawerController>(()=>
      AppDrawerController(homeRepo: Get.find()),
    );
      // Home Repository
    Get.lazyPut<IHomeRepository>(()=>
      HomeRepoFirebaseImplimentation(),
      fenix: true,
      // pref: true,
    );
    // Home Controller
    Get.lazyPut<HomeController>( ()=>
      HomeController(homeRepository: Get.find()),
      // permanent: true,
      fenix: true,
    );
  }
}
