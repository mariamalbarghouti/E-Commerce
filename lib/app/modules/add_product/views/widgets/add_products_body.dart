import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:trail/app/modules/add_product/controllers/add_product_controller.dart';
import 'package:trail/app/modules/add_product/views/widgets/image_picker/image_picker_widget.dart';

// Add Products Body
class AddProductsBody extends GetView<AddProductController> {
  const AddProductsBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Image Picker
            const ImagePickerWidget(),
            // Title
            TextFormField(
              controller: controller.titleEditionController,
              decoration: const InputDecoration(
                labelText: "Title",
              ),
              textInputAction: TextInputAction.next,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (_) => controller.titleValidator(),
            ),
            // Description
            TextFormField(
              controller: controller.descriptionEditionController,
              decoration: const InputDecoration(
                labelText: "Description",
              ),
              textInputAction: TextInputAction.next,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (_) => controller.descriptionValidator(),
            ),
            // Price
            TextFormField(
              controller: controller.priceEditionController,
              decoration: const InputDecoration(
                labelText: "Price",
              ),
              textInputAction: TextInputAction.done,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (_) => controller.priceValidator(),
            ),
            // Add Product Button
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: RoundedLoadingButton(
                onPressed: () async => await controller.addProduct(),
                child: const Text('Add Product'),
                controller: controller.addProductController,
                resetDuration: const Duration(seconds: 3),
                // resetAfterDuration: true,
              ),
            ),
            TextButton(onPressed: ()=>controller.fun(), child: Text("ed"))
          ],
        ),
      ),
    );
  }
}
