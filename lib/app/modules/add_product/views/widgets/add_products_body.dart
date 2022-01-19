import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
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
        child: Form(
          key: controller.addProductFormKey,
          child: Column(
            children: [
              // Image Picker
              const ImagePickerWidget(),
              // Title
              TextFormField(
                controller: controller.titleEditionController.value,
                decoration: const InputDecoration(
                  labelText: "Title",
                ),
                textInputAction: TextInputAction.next,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (_) => controller.titleValidator(),
              ),
              // Description
              TextFormField(
                controller: controller.descriptionEditionController.value,
                decoration: const InputDecoration(
                  labelText: "Description",
                ),
                textInputAction: TextInputAction.next,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (_) => controller.descriptionValidator(),
              ),
              // Price
              TextFormField(
                controller: controller.priceEditionController.value,
                decoration: const InputDecoration(
                  labelText: "Price",
                ),
                textInputAction: TextInputAction.done,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (_) => controller.priceValidator(),
              ),
              // Add Product Button
              ElevatedButton(
                onPressed: () async => await controller.addProduct(),
                child: const Text("Add Product"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
