import 'package:get/get.dart';
import 'package:trail/app/modules/product_details/infrastracture/delete_update_repo_impl.dart';
import 'package:trail/app/modules/product_details/repository/delete_update_repo.dart';

import '../controllers/product_details_controller.dart';

class ProductDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IDeleteOrUpdateRep>(
      () => DeleteOrUpdateRepImpl(),
    );
    Get.lazyPut<ProductDetailsController>(
      () => ProductDetailsController(Get.find()),
    );
  }
}
