import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trail/app/core/infrastucture/firebase_helper.dart';
import 'package:trail/app/modules/add_product/domain/value_object/product.dart';
import 'package:trail/app/modules/add_product/infrastructure/dto/add_product_tdo.dart';
import 'package:trail/app/modules/home/domain/repositories/sign_out_repo.dart';
import 'package:trail/app/routes/app_pages.dart';
import 'package:trail/core/print_logger.dart';

// Home Controller
class HomeController extends GetxController with StateMixin<List<Product>> {
  HomeController({required this.homeRepository});
  List<Product> _products = [];
  final IHomeRepository homeRepository;
  Rx<ScrollController> controller = ScrollController().obs;
  // DocumentSnapshot? lastDocument;
  // QuerySnapshot? querySnapshot;
  Rx<bool> isLoading = false.obs;
  bool hasMore = true;
  @override
  void onInit() async {
    coloredPrint(msg: "msg upper");
    await _fetchProductsFromDB();
    // await getData();
     controller.value.addListener(_fetchNextPageOfProductsFromDB);
    //  controller.value.addListener(() {
    //     if (controller.value.offset >=
    //         controller.value.position.maxScrollExtent &&
    //     !controller.value.position.outOfRange){
    // getData();
    // }
    // });
    super.onInit();
  }

  // getData() async {
  //   if (!hasMore) {
  //     coloredPrint(msg: 'No More Products');
  //     return;
  //   }
  //   if (isLoading.value) {
  //     return;
  //   }
  //   isLoading.value = true;

  //   if (lastDocument == null) {
  //     querySnapshot = await FirebaseFirestore.instance.productsCollection
  //         .limit(5)
  //         .get();
  //            querySnapshot!.docs
  //         .map((e) => pro.add(ProductDTO.fromFireStore(e).toDomain()))
  //         .toList();
  //     change(pro, status: RxStatus.success());
  //     isLoading.value = false;

  //   } else {
  //     querySnapshot = await FirebaseFirestore.instance.productsCollection
  //         .startAfterDocument(lastDocument!)
  //         .limit(2)
  //         .get();
  //     querySnapshot!.docs
  //         .map((e) => pro.add(ProductDTO.fromFireStore(e).toDomain()))
  //         .toList();
  //     isLoading.value = false;
  //     change(pro, status: RxStatus.success());
  //   }
  //   if (querySnapshot!.docs.length < 2) {
  //     hasMore = false;
  //   }

  //   // lastDocument = querySnapshot!.docs[querySnapshot!.docs.length - 1];
  //   lastDocument = querySnapshot!.docs[querySnapshot!.size-1]; //[querySnapshot!.docs.length];
  // }

  // fun() async {
  //   coloredPrint(msg: "msg");
  //   controller.value.addListener(() async {
  //     if (controller.value.offset >=
  //             controller.value.position.maxScrollExtent &&
  //         !controller.value.position.outOfRange) {
  //       coloredPrint(msg: "msg");

  //       try {
  //         coloredPrint(msg: "msg");
  //         await FirebaseFirestore.instance.productsCollection
  //             // .sta({"id":pro.last.id!})
  //             .limit(6)
  //             .get()
  //             .then((value) => value.docs.map((e) {
  //                   //  completer.complete(
  //                   pro.add(ProductDTO.fromFireStore(e).toDomain());
  //                 }).toList());
  //         change(pro, status: RxStatus.success());
  //       } catch (e) {}
  //     }
  //   });
  // }

  // Fetching Data
  Future<void> _fetchProductsFromDB() async {
    homeRepository.fetchProducts().listen((event) {
      event.fold(
          // If database hase an error
          (l) => change(null, status: RxStatus.error(l.msg)),
          (r) {
            _products=r;
            change(_products, status: RxStatus.success());
          });
    });
  }

  // Fetching Data
  Future<void> _fetchNextPageOfProductsFromDB() async {
    if (controller.value.offset >= controller.value.position.maxScrollExtent &&
        !controller.value.position.outOfRange) {
      homeRepository.fetchProductsNextPage().listen((event) {
        event.fold(
            // If database hase an error
            (l) => change(null, status: RxStatus.error(l.msg)),
            (r) {
              _products.addAll(r);
              change(_products, status: RxStatus.success());
            });
      });
    }
  }

  // Go To More Details
  Future<void> goToMoreDetails(products) async {
    return await Get.toNamed(Routes.PRODUCT_DETAILS, arguments: products);
  }
}
