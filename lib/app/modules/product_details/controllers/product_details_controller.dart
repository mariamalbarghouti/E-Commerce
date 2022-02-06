import 'package:get/get.dart';
import 'package:trail/core/print_logger.dart';

class ProductDetailsController extends GetxController {
  //TODO: Implement ProductDetailsController

  final count = 0.obs;
  @override
  void onInit() {
    Get.arguments;
    coloredPrint(msg:   Get.arguments[0].toString());
    super.onInit();
  }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {}
  // void increment() => count.value++;
}
