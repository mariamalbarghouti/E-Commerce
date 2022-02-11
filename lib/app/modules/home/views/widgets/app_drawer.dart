import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:trail/app/modules/home/controllers/drawer_controller.dart';
import 'package:trail/app/routes/app_pages.dart';


class AppDrawerWidget extends StatelessWidget {
  const AppDrawerWidget();
  @override
  Widget build(BuildContext context) {
    return  Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Add Post
            TextButton(
              onPressed: () =>Get.toNamed(Routes.ADD_PRODUCT),
              child: const Text("Add Post"),
            ),
            // Sign Out Button 
            TextButton(
              onPressed: () async=>Get.find<AppDrawerController>().goToAddPost(),
              child: const Text("Sign out"),
            ),
          ],
        ),
      );
  }
}
