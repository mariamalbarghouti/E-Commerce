import 'package:get/get.dart';
import 'package:trail/app/modules/add_product/domain/value_object/product.dart';
import 'package:trail/core/print_logger.dart';

// Product Details Controller
class ProductDetailsController extends GetxController {
late Product product;
  @override
  void onInit() {
   product=Get.arguments[0];
    super.onInit();
  }
  // fun() {
  //   Get.arguments;
  //   coloredPrint(msg: product.toString());
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {}
  // void increment() => count.value++;
}
