import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trail/app/modules/home/views/widgets/app_drawer.dart';
import 'package:trail/app/modules/home/views/widgets/home_body.dart';
import '../controllers/home_controller.dart';

// Home View
class HomeView extends GetView<HomeController> {
  const HomeView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('HomeView'),
        title: const TextField(
          decoration: InputDecoration(label: Text("Search")),
        ),
        centerTitle: true,
      ),
      drawer: const AppDrawerWidget(),
      body: const HomeBody(),
    );
  }
}
