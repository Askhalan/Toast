
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/common/app/widgets/texts/section_heading.dart';
import 'package:toast/features/user/social/controller/post_view_controller.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';

class IngredientsViewBodyHeading extends StatelessWidget {
   IngredientsViewBodyHeading({
    super.key,
    required this.allIngredients,
  });
final ViewPostController ingredientController = Get.find();

  final List allIngredients;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const JSectionHeading(
          heading: 'Ingredients',
          isFixedColor: false,
        ),
        Container(
          height: 40,
          // width: 80,` 
          decoration: BoxDecoration(
              color: JColor.secondary,
              borderRadius: BorderRadius.circular(JSize.borderRadMd)),
          child: TextButton(
            onPressed: () {
              if (ingredientController.areAllSelected(allIngredients)) {
                ingredientController.deselectAll();
              } else {
                ingredientController.selectAll(allIngredients);
              }
            },
            child: GetBuilder<ViewPostController>(
              builder: (controller) {
                return Text(
                  controller.areAllSelected(allIngredients)
                      ? 'Deselect All'
                      : 'Select All',
                  style: const TextStyle(color: Colors.black),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
 