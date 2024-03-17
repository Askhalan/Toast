import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/features/user/grocesory/contollers/grocesory_controller.dart';
import 'package:unicons/unicons.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class GrocesoryListTile extends StatelessWidget {
  GrocesoryListTile({
    Key? key,
    required this.ingredient,
  }) : super(key: key);

  final GrocesoryController grocesoryController = Get.find();
  final String ingredient;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final bool isSelected = grocesoryController.isSelected(ingredient);
      return Container(
        margin: const EdgeInsets.symmetric(
          vertical: JmSize.spaceBtwInputFields * 0.5,
        ),
        padding: const EdgeInsets.all(JmSize.defaultSpace - 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(JmSize.borderRadiusLg),
          border: Border.all(color: JColor.secondary),
        ),
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ingredient,
                    style: TextStyle(
                      decoration:
                          isSelected ? TextDecoration.lineThrough : null,
                      color: isSelected ? JColor.success : null,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                grocesoryController.toggleIngredient(ingredient);
              },
              icon: isSelected
                  ? const Icon(
                      UniconsLine.check_circle,
                      color: JColor.success,
                    )
                  : const Icon(UniconsLine.circle),
            )
          ],
        ),
      );
    });
  }
}
