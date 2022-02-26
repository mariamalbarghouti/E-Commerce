import 'package:get/get.dart';
import 'package:trail/app/core/infrastructure/product_repo.dart';
import 'package:trail/app/modules/add_product/infrastructure/repo_imp/product_repo_imp.dart';
import 'package:trail/app/modules/home/controllers/drawer_controller.dart';
import '../controllers/home_controller.dart';

// Home Binding
class HomeBinding extends Bindings {
  @override
  void dependencies() async {
  
    Get.lazyPut<AppDrawerController>(()=>
      AppDrawerController(homeRepo: Get.find()),
    );
      // Home Repository
    Get.lazyPut<IProductRepo>(()=>
      ProductRepoFirebaseImp(),
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
