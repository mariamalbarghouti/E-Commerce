import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trail/app/modules/home/controllers/home_controller.dart';

class HomeBody extends GetView<HomeController> {
  const HomeBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
            ),
            itemBuilder: (context, index) {
              return Card(
                elevation: 2.0,
                color: Colors.amber,
                child: InkWell(
                  onTap:()async=>await controller.goToProduct(),
                  child: Column(
                    children: [],
                  ),
                ),
              );
            });
  }
}