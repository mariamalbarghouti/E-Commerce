import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trail/app/modules/add_product/controllers/add_product_controller.dart';
import 'package:trail/core/print_logger.dart';

// Selected Images
class SelectedImagesWidget extends GetView<AddProductController> {
  const SelectedImagesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => (controller.product.value.pickedImages.isEmpty)
          ? const SizedBox.shrink()
          : SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              clipBehavior: Clip.none,
              child: SizedBox(
                height: 80,
                child: ListView.builder(
                  itemCount: controller.product.value.pickedImages.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) 
                  {
                    coloredPrint(msg: " controller.product.v ${ controller.product.value.pickedImages
                                      .getOrCrash()[index]}");
                    return Stack(
                      clipBehavior: Clip.none,
                      children: [
                        // Image
                        Card(
                          color: Colors.amber,
                          clipBehavior: Clip.hardEdge,
                          child: (controller.product.value.pickedImages
                                      .getOrCrash()[index]
                                      .runtimeType !=
                                  String)
                              // Image If From Gallery
                              ? Image.file(
                                  controller.product.value.pickedImages
                                      .getOrCrash()[index],
                                  width: 90,
                                  height: 90,
                                  fit: BoxFit.cover,
                                )
                              // Image If Update
                              : Image.network(
                                  controller.product.value.pickedImages
                                      .getOrCrash()[index],
                                  width: 90,
                                  height: 90,
                                  fit: BoxFit.cover,
                                ),
                        ),
                        // Delete Button
                        Positioned(
                         right: 0,
                          top: -5,
                          child: InkWell(
                            onTap: () async => await controller.deleteImage(
                              index: index,
                              image: controller.product.value.pickedImages
                                  .getOrCrash()[index],
                            ),
                            child: const CircleAvatar(
                              child: Icon(
                                Icons.delete_outlined,
                                size: 18,
                              ),
                              backgroundColor: Colors.red,
                              radius: 12,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
    );
  }
}
