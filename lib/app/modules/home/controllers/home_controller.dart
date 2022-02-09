import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trail/app/core/domain/failures/server_failures/firestore_failures.dart';
import 'package:trail/app/modules/add_product/domain/value_object/product.dart';
import 'package:trail/app/modules/home/domain/repositories/sign_out_repo.dart';
import 'package:trail/app/routes/app_pages.dart';
import 'package:trail/core/print_logger.dart';

// Home Controller
class HomeController extends GetxController with StateMixin<List<Product>> {
  HomeController({required this.homeRepository});
  // repo
  final IHomeRepository homeRepository;
  // for presenting the Data
  // or append it
  List<Product> _products = [];
  // Screolling Controller
  Rx<ScrollController> scrollingController = ScrollController().obs;
  // Is Loading
  Rx<bool> isLoading = false.obs;

  @override
  void onInit() {
    // Fetch First Page From DB
    _fetchProductsFromDB();
    // Fetching The Next Page
    _fetchNextPageOfProductsFromDB();
    super.onInit();
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
  void _fetchNextPageOfProductsFromDB() {
    // Listen To The Scrolle Controller
    // If the User Reatch The End fetch the Next Page
    // TODO Make The controller do
    scrollingController.value.addListener(() {
      if (scrollingController.value.offset >=
              scrollingController.value.position.maxScrollExtent &&
          !scrollingController.value.position.outOfRange) {
        if (isLoading.value) {
          return;
        }
        isLoading.value = true;
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
            } else {
              return change(null, status: RxStatus.error(l.msg));
            }
          },
              // If No Error
              (r) {
            _products.addAll(r);
            // Change UI
            change(_products, status: RxStatus.success());
            isLoading.value = false;
          });
        });
      }
    });
  }

  // Go To More Details
  Future<void> goToMoreDetails(products) async {
    return await Get.toNamed(Routes.PRODUCT_DETAILS, arguments: products);
  }
}
