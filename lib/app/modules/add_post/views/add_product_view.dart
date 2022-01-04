import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_product_controller.dart';

// Add Product
class AddProductView extends GetView<AddProductController> {
  const AddProductView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Product'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // Image Picker
              InkWell(
                onTap: () async=> await controller.pickImgFromGallery(),
                child: Center(
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.cyan,
                    child: const Center(child: Text("Pick From Gallery")),
                  ),
                ),
              ),
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
      ),
    );
  }
}
