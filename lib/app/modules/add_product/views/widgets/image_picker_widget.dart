import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:trail/app/modules/add_product/controllers/add_product_controller.dart';

// Image Picker Widget
class ImagePickerWidget extends StatelessWidget {
  const ImagePickerWidget();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async =>
          await Get.find<AddProductController>().pickImgFromGallery(),
      child: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.cyan,
          child: GetBuilder<AddProductController>(
            builder: (imgController) {
              if (imgController.pickedPhoto == null) {
                return const Center(child: Text("Pick From Gallery"));
              } else {
                return Image.file(
                  imgController.pickedPhoto!,
                  width: 200,
                  height: 200,
                  fit: BoxFit.fill,
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
