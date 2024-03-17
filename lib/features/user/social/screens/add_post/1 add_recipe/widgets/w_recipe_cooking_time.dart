import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/features/user/social/controller/add_recipe_controller.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/constants/text_strings.dart';
import 'package:toast/utils/devices/responsive.dart';
import 'package:toast/utils/helpers/helper_functions.dart';

class AddRecipeCookingTime extends StatelessWidget {
   AddRecipeCookingTime({
    super.key,
  });
 final AddRecipeController controller = Get.find();
 
  @override
  Widget build(BuildContext context) {
    final isDark = JHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          JTexts.cookingTime,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Container(
          height: 55,
          width: JFluid.percentWidth(context: context, percent: 45),
          decoration: BoxDecoration(
            color: isDark ? JColor.black : JColor.lightGrey,
            border: Border.all(color: isDark ? JColor.darkGrey : JColor.grey),
            borderRadius: BorderRadius.circular(JSize.borderRadLg),
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            IconButton(onPressed: () {
              controller.cookingTimeIncrease();
            }, icon: const Icon(Icons.add)),
            Obx(()=>

              Text(
                '${controller.cookingTime} min',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            IconButton(onPressed: () {
              controller.cookingTimeDecrease();
            }, icon: const Icon(Icons.remove)),
          ]),
        )
      ],
    );
  }
}
