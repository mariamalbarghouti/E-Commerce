import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:trail/app/modules/add_product/controllers/add_product_controller.dart';
import 'package:trail/app/modules/add_product/views/widgets/add_products_body.dart';


// Add Product
class AddProductView extends GetView<AddProductController>{
  const AddProductView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        title:  Text((Get.arguments==null)?'Add Product':"Update"),
        centerTitle: true,
      ),
      // Body
      body: const AddProductsBody(),
    );
  }
}
