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
          Obx((()=> Text("The Seller's Account: ${controller.email.value}"))),
          // Images
          CarouselSlider.builder(
            // carouselController: buttonCarouselController,
            options: CarouselOptions(
              aspectRatio: 3 / 2,
              enableInfiniteScroll: false,
            ),
            itemCount: controller.product.pickedImages.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    Image.network(
              controller.product.pickedImages.getOrCrash()[itemIndex],
            ),
          ),
          // Price
          Text(
            "Price: ${controller.product.price.getOrCrash()}",
            style: const TextStyle(fontSize: 20),
          ),
          // Description
          Text(
            "Description: ${controller.product.description.getOrCrash()}",
            style: const TextStyle(fontSize: 20),
          ),
          // Time
          Text(
            // "Time: ${controller.time.toString().substring(0, Get.arguments.time.toString().indexOf("."))}",
            "Time: ${controller.product.time.toString().substring(0,19)}",
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
