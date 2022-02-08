import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:trail/app/modules/product_details/controllers/product_details_controller.dart';

// Product Details Body
class ProductDetailsBody extends GetView<ProductDetailsController> {
  const ProductDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // CarouselController buttonCarouselController = CarouselController();
    return SingleChildScrollView(
      child: Column(
        children: [
          Obx((()=> Text("The Seller's Account: ${controller.email}"))),
          // Images
          CarouselSlider.builder(
            // carouselController: buttonCarouselController,
            options: CarouselOptions(
              aspectRatio: 3 / 2,
              enableInfiniteScroll: false,
            ),
            itemCount: Get.arguments.pickedImages.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    Image.network(
              Get.arguments.pickedImages.getOrCrash()[itemIndex],
            ),
          ),
          // IconButton(
          //   onPressed: () => buttonCarouselController.nextPage(
          //       duration: const Duration(milliseconds: 300),
          //       curve: Curves.linear),
          //   icon: const Icon(Icons.forward),
          // ),
          // Price
          Text(
            "Price: ${Get.arguments.price.getOrCrash()}",
            style: const TextStyle(fontSize: 20),
          ),
          // Description
          Text(
            "Description: ${Get.arguments.description.getOrCrash()}",
            style: const TextStyle(fontSize: 20),
          ),
          // Time
          Text(
            "Time: ${Get.arguments.time.toString().substring(0, Get.arguments.time.toString().indexOf("."))}",
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
