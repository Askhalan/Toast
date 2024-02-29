// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/common/web/styles/texts.dart';
import 'package:toast/features/admin/1-navigation/controller/a_navigation_controller.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/devices/responsive.dart';

class JNavigationItem extends StatelessWidget {
  const JNavigationItem(
      {super.key,
      required this.icon,
      required this.pageName,
      this.selected,
      required this.index});

  final IconData icon;
  final String pageName;
  final int index;

  final bool? selected;
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ANavigationController>();
    return Obx(
      () => InkWell(
        onTap: () {
          controller.pageController.animateToPage(index,
              duration: Duration(milliseconds: 500), curve: Curves.easeIn);
        },
        onHover: (hovering) {
          if (hovering) {
            controller.selectedPageIndex.value = index;
          } else {
            if (controller.selectedPageIndex.value == index) {
              controller.selectedPageIndex.value = -1; // Reset to default color
            }
          }
        },
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          padding: EdgeInsets.all(3),
          constraints: BoxConstraints(minHeight: 40, maxHeight: 50),
          width: double.infinity,
          decoration: BoxDecoration(
              color: controller.selectedPageIndex.value == index
                  ? JColor.primary.withOpacity(0.9) // Change to red if selected
                      : JColor.secondary, // Otherwise, set to light grey
              borderRadius: BorderRadius.circular(JSize.borderRadMd),
              border: Border.all(color:  controller.selectedPageIndex.value == index
                  ? JColor.accent // Change to red if selected
                      : JColor.darkGrey,)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: JFluid.percentWidth(context: context, percent: 1),
              ),
              Icon(
                icon,
                color: controller.selectedPageIndex.value == index
                    ? JColor.dark
                    : JColor.icon,
              ),
              SizedBox(
                width: JFluid.percentWidth(context: context, percent: 1),
              ),
              Text(
                pageName,
                style: controller.selectedPageIndex.value == index
                    ? JTexts.wNavItemSelected
                    : JTexts.wNavItemNotSelected,
              )
            ],
          ),
        ),
      ),
    );
  }
}
