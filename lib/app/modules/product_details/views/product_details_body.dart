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
    return SingleChildScrollView(
      child: Column(
        children: [
          // Images
          CarouselSlider.builder(
            itemCount: Get.arguments.pickedImages.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    Image.network(
              Get.arguments.pickedImages.getOrCrash()[itemIndex],
            ),
            options: CarouselOptions(
              aspectRatio: 3 / 2,
              enableInfiniteScroll: false,
            ),
          ),
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
        ],
      ),
    );
  }
}
