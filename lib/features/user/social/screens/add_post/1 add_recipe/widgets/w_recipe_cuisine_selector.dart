import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/utils/constants/text_strings.dart';

import '../../../../../../../utils/constants/colors.dart';
import '../../../../../../../utils/constants/sizes.dart';
import '../../../../../../../utils/devices/responsive.dart';
import '../../../../../../../utils/helpers/helper_functions.dart';
import '../../../../controller/add_recipe_controller.dart';

class AddRecipeCusineSelector extends StatelessWidget {
  AddRecipeCusineSelector({
    super.key,
  });

  final controller = AddRecipeController();

  @override
  Widget build(BuildContext context) {
    final isDark = JHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //--------------------------------------------- LABEL for Dropdown ---------------------------------------------

        Text(
          'Cuisine',
          style: Theme.of(context).textTheme.bodyMedium,
        ),

        //--------------------------------------------- LABEL for Dropdown ---------------------------------------------

        Obx(
          () => Container(
            height: 55,
            width: JFluid.percentWidth(context: context, percent: 45),
            decoration: BoxDecoration(
              color: isDark ? JColor.black : JColor.lightGrey,
              border: Border.all(color: isDark ? JColor.darkGrey : JColor.grey),
              borderRadius: BorderRadius.circular(JSize.borderRadLg),
            ),
            child: Center(
              child: DropdownButton<String>(
                isExpanded: true,
                padding: const EdgeInsets.all(JmSize.md),
                onChanged: (newValue) {
                  controller.updateSelectedCusine(newValue.toString());
                },
                hint: const Text(JTexts.choose),

                ///----------- Writing a function to convert each list item into a list of objects  
                ///----------- of type [DropdownMenuItem] which contains a value & a child
                items: controller.cusineList
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),

                ///----------- Checking does the user selected anyvalue or not and 
                ///----------- updating the value from the controller  
                value: controller.selectedCuisine.value == " "
                    ? null
                    : controller.selectedCuisine.value,
                underline: Container(
                  color: const Color.fromARGB(0, 255, 255, 255),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
