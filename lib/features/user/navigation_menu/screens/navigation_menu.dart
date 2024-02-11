// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field, must_be_immutable

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/features/user/navigation_menu/contollers/navigation_bar_controller.dart';

import '../../../../utils/constants/sizes.dart';
import 'w_navigation_bar.dart';

class NavigationMenu extends StatelessWidget {
  NavigationMenu({Key? key}) : super(key: key);
  final controller = Get.put(NavigationBarController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
         
          controller.screens[selectedPage.value],
        

          // Observe the isVisible variable and build the navigation bar accordingly
          Obx(() {
            return Visibility(
              visible: controller.isVisible.value,
              child: JNavigationBar(),
            );
          }),
        ],
      ),
    );
  }
}
