import 'package:get/get.dart';
import 'package:trail/app/modules/add_product/domain/product_repo.dart';
import 'package:trail/app/modules/add_product/infrastructure/repo_imp/product_repo_imp.dart';

import '../controllers/add_product_controller.dart';

class AddProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IAddProductRepo>(() => ProductRepoFirebaseImp());
    Get.lazyPut<AddProductController>(
      () => AddProductController(Get.find()),
    );
  }
}
