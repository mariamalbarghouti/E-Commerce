import 'package:flutter/material.dart';
import 'package:trail/app/modules/add_product/views/widgets/add_products_body.dart';


// Add Product
class AddProductView extends StatelessWidget{
  const AddProductView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Product'),
        centerTitle: true,
      ),
      body: const AddProductsBody(),
    );
  }
}
