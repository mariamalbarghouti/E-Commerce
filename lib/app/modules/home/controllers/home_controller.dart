import 'dart:async';
import 'package:get/get.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:trail/app/core/infrastructure/product_repo.dart';
import '../../../core/domain/failures/server_failures/firestore_failures.dart';
import '../../add_product/domain/value_object/product.dart';
import '../../../routes/app_pages.dart';
import '../../../../core/print_logger.dart';

// Home Controller
class HomeController extends GetxController with StateMixin<List<Product>> {
  HomeController({required this.homeRepository});
  // repo
  final IProductRepo homeRepository;
  // for presenting the Data
  // or append it
  List<Product> _products = [];
  // Screolling Controller
  // Rx<ScrollController> scrollingController = ScrollController().obs;
  RefreshController refresherController = RefreshController();
  // Is Loading
  Rx<bool> isLoading = false.obs;
  // final List<String> _searchHistory = ["Fusha", "Google"];
  // late Rx<List<String>> filteredSearchHistory;
  // Rx<String>? selectedTerm;
  Rx<FloatingSearchBarController> floatingSearchBarController =
      FloatingSearchBarController().obs;

  //  Rx<FloatingSearchBarController> controller=FloatingSearchBarController().obs;

  // @override
  // void dispose() {
  //   super.dispose();
  // }

  @override
  void onInit() {
    // filteredSearchHistory?.value = filteredSearchTerms(filter: null);
    // floatingSearchBarController.value=FloatingSearchBarController();
    // controller.value = FloatingSearchBarController();
    // Fetch First Page From DB
    _fetchProductsFromDB();

    // Fetching The Next Page
    // scrollingController.value.addListener(_fetchNextPageOfProductsFromDB);
    super.onInit();
  }

  @override
  void onClose() {
    // homeRepository.dispose();
    // scrollingController.value.dispose();
    refresherController.dispose();
    super.onClose();
  }

  // Fetching Data
  void _fetchProductsFromDB() {
    homeRepository.fetchProducts().listen((event) {
      event.fold(
          // If database hase an error
          (l) => change(null, status: RxStatus.error(l.msg)),
          // return the data
          (r) {
        _products = r;
        change(_products, status: RxStatus.success());
      });
    });
  }

  // Fetching Data
  void fetchNextPageOfProductsFromDB() {
    // Listen To The Scrolle Controller
    // If the User Reatch The End fetch the Next Page
    // scrollingController.value.addListener(() {
    // if (scrollingController.value.offset >=
    //         scrollingController.value.position.maxScrollExtent &&
    //     !scrollingController.value.position.outOfRange) {
    // if (isLoading.value) {
    //   return;
    // }
    // isLoading.value = true;
    // refresherController.requestLoading();

    change(_products, status: RxStatus.loadingMore());
    // Fetch Next Page
    homeRepository.fetchProductsFromTheNextPage().listen((event) {
      event.fold(
          // If database hase an error
          (l) {
        // If the error is NoMoreData
        // just return a snack bar
        // else
        // return the error
        if (l.msg == const FireStoreServerFailures.noMoreData().msg) {
          Get.snackbar(
            "😒",
            l.msg,
            snackPosition: SnackPosition.BOTTOM,
          );
          return refresherController.loadNoData();
        } else {
          refresherController.loadFailed();
          return change(null, status: RxStatus.error(l.msg));
        }
      },
          // If No Error
          (r) {
        _products.addAll(r);
        // Change UI
        change(_products, status: RxStatus.success());
        refresherController.loadComplete();
        // isLoading.value = false;
      });
    });
  }

  // Refresh The Screen
  void refreshTheScreen() {
    // refresherController.twoLevelComplete();
    // refresherController.requestRefresh();
    // Get.delete()
    // Clear The Products
    _products.clear();
    // Fetch first 15
    _fetchProductsFromDB();
    // tell the ui i am done
    refresherController.refreshCompleted();
  }

  goUp() {
    // refresherController.value.position=
    refresherController.position?.moveTo(0);
  }


  // Go To More Details
  Future<void> goToMoreDetails(products) async {
    return await Get.toNamed(Routes.PRODUCT_DETAILS, arguments: products);
  }
}
