import 'package:flutter/material.dart';

import 'package:get/get.dart';
// import 'package:multi_image_picker2/multi_image_picker2.dart';
import 'package:trail/app/modules/add_product/controllers/add_product_controller.dart';
import 'package:trail/app/modules/add_product/views/widgets/image_picker/widgets/selected_images.dart';

// Image Picker Widget
class ImagePickerWidget extends StatelessWidget {
  const ImagePickerWidget();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () async =>
              await Get.find<AddProductController>().pickImgFromGallery(),
          icon: const Icon(Icons.add_a_photo),
        ),
        const Expanded(
          flex: 5,
          child: SelectedImagesWidget(),
        ),
      ],
    );
  }
}
