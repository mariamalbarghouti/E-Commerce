import 'package:flutter/material.dart';
import 'package:trail/app/modules/product_details/views/widgets/product_details_app_bar.dart';
import 'package:trail/app/modules/product_details/views/widgets/product_details_body.dart';

// Product Details View
class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView();
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // Appbar
      appBar:  ProductDetailsAppBar(),
      // Body
      body: ProductDetailsBody(),
    );
  }
}
