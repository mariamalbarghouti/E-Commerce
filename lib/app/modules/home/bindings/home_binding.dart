import 'package:get/get.dart';
import 'package:trail/app/modules/home/controllers/drawer_controller.dart';


import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<AppDrawerController>(
      () => AppDrawerController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
