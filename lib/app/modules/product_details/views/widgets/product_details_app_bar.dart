import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trail/app/modules/product_details/controllers/product_details_controller.dart';

// AppBar of Product Details
class ProductDetailsAppBar extends GetView<ProductDetailsController>
    with PreferredSizeWidget {
  const ProductDetailsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Appbar
    return AppBar(
      title: Text('${Get.arguments.title.getOrCrash()}'),
      centerTitle: true,
      // Delete aor Update
      actions: [
        Obx(
          () => controller.isMine.value
              ? DropdownButton(
                  // on click do action
                  onChanged: (String? value) async =>
                      await controller.deleteOrUpdate(itemName: value),
                  alignment: Alignment.center,
                  icon: const Icon(Icons.more_horiz),
                  dropdownColor: Colors.red,
                  underline: const SizedBox.shrink(),
                  // Items
                  items: controller.moreDetailsList
                      .map((element) => DropdownMenuItem<String>(
                            child: Text(element),
                            value: element,
                          ))
                      .toList(),
                )
              : const SizedBox.shrink(),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
