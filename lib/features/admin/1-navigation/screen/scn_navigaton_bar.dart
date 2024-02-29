// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/features/admin/1-navigation/controller/a_navigation_controller.dart';
import 'package:toast/features/admin/1-navigation/screen/widgets/w_nav_tab.dart';
import 'package:toast/features/admin/2%20a_home/screens/a_scn_home.dart';
import 'package:toast/features/admin/3%20a_ingredients/screens/ingeridentsmanagement.dart';
import 'package:toast/features/admin/4%20a_post/screens/post_management.dart';
import 'package:toast/features/admin/5%20a_user/screens/user_management.dart';
import 'package:toast/utils/constants/colors.dart';

class AScnNavigationBar extends StatelessWidget {
  AScnNavigationBar({
    super.key,
  });

  final controller = Get.put(ANavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Expanded(
      child: Container(
        decoration: BoxDecoration(gradient: JColor.gradientBg),
        child: Row(
          children: [
            // ----------------------------------------------- NAVIGATION BAR ----------------------------------------

            ANavigationTab(),

            // -------------------------------------------------- BODY VIEW ------------------------------------------

            Flexible(
              flex: 8,
              child: GetBuilder<ANavigationController>(
                builder: (controller) => PageView(
                  controller: controller.pageController,
                  onPageChanged: (index) {
                    controller.selectedPageIndex.value = index;
                  },
                  children: [
                    AScnHome(),
                    AScnIngredients(),
                    AScnPostManagement(),
                    AScnUserManagement(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
