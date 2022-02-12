import 'package:get/get.dart';
import 'package:trail/app/modules/add_product/domain/product_repo.dart';
import 'package:trail/app/modules/add_product/infrastructure/repo_imp/product_repo_imp.dart';

import '../controllers/product_details_controller.dart';

class ProductDetailsBinding extends Bindings {
  @override
  void dependencies() {
    // Rpo
    Get.lazyPut<IProductRepo>(
      () => ProductRepoFirebaseImp(),
    );
    // controller
    Get.lazyPut<ProductDetailsController>(
      () => ProductDetailsController(Get.find()),
    ); 
  }
}
