import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/products_controller.dart';

class ProductsView extends GetView<ProductsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SPRODUCTSView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PRODUCTS is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
