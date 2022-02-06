import 'dart:async';
import 'package:get/get.dart';
import 'package:trail/app/modules/add_product/domain/value_object/product.dart';
import 'package:trail/app/modules/home/domain/repositories/sign_out_repo.dart';
import 'package:trail/app/routes/app_pages.dart';

// Home Controller
class HomeController extends GetxController with StateMixin<List<Product>> {
  HomeController({required this.homeRepository});
  final IHomeRepository homeRepository;
  @override
  void onInit() async {
    await fetchProductsFromDB();
    super.onInit();
  }

  // Fetching Data
  Future<void> fetchProductsFromDB() async {
    homeRepository.fetchProducts().listen((event) {
      event.fold(
          // If database hase an error
          (l) => change(
                null,
                status: RxStatus.error(l.msg),
              ),
          (r) => change(r, status: RxStatus.success()));
    });
  }

  // Go To More Details
  Future<void> goToMoreDetails(products) async {
    return await Get.toNamed(Routes.PRODUCT_DETAILS, arguments: products);
  }
}
