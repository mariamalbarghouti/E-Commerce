import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trail/app/modules/home/views/widgets/app_drawer.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      drawer: AppDrawerWidget(),
      body: Column(
        children: [],
      ),
    );
  }
}
