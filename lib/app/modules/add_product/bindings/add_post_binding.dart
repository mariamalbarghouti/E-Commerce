import 'package:get/get.dart';
import 'package:trail/app/core/domain/repo/product_repo.dart';
import 'package:trail/app/modules/add_product/infrastructure/repo_imp/product_repo_imp.dart';
// import 'package:trail/app/modules/add_product/infrastructure/repo_imp/product_repo_imp.dart';

import '../controllers/add_product_controller.dart';

class AddProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IProductRepo>(() => ProductRepoFirebaseImp());
    Get.lazyPut<AddProductController>(
      () => AddProductController(Get.find()),
    );
  }
}
