import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:trail/app/modules/add_product/controllers/add_product_controller.dart';
import 'package:trail/app/modules/add_product/views/widgets/image_picker_widget.dart';

// Add Products Body
class AddProductsBody extends GetView<AddProductController>  {
  const AddProductsBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // Image Picker
              const ImagePickerWidget(),

              // Description
              TextFormField(
                controller: controller.descriptionEditionController.value,
                decoration: const InputDecoration(
                  labelText: "Description",
                ),
                textInputAction: TextInputAction.next,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                // validator: (_) => controller.passwordValidation(),
              ),
              // Price
              TextFormField(
                controller: controller.priceEditionController.value,
                decoration: const InputDecoration(
                  labelText: "Price",
                ),
                textInputAction: TextInputAction.next,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                // validator: (_) => controller.passwordValidation(),
              ),
              // Add Product Button
              ElevatedButton(
                onPressed: () => controller.addProduct(),
                child: const Text("Add Product"),
              ),
            ],
          ),
        ),
      );
  }
}