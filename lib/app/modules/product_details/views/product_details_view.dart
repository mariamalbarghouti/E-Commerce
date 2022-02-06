import 'package:flutter/material.dart';
import 'package:trail/app/modules/product_details/views/product_details_body.dart';

// Product Details View
class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        title: const Text('ProductDetailsView'),
        centerTitle: true,
      ),
      // Body
      body: const ProductDetailsBody(),
    );
  }
}
