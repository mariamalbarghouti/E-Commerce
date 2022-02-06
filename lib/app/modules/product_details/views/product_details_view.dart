import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../controllers/product_details_controller.dart';

class ProductDetailsView extends GetView<ProductDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProductDetailsView'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider.builder(
              itemCount: 15,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Text(itemIndex.toString()),
              options: CarouselOptions(aspectRatio: 2 / 3),
            ),
            Text(
              controller.product.price.getOrCrash(),
              style: const TextStyle(fontSize: 20),
            ),
            // TextButton(
            // onPressed: () => controller.fun(),
            // child: const Text("Click Me"),
            // ),
          ],
        ),
      ),
    );
  }
}
