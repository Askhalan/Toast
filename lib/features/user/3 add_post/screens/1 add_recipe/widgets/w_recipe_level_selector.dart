import 'package:flutter/material.dart';
import 'package:toast/utils/constants/text_strings.dart';

import '../../../../../../../utils/constants/colors.dart';
import '../../../../../../../utils/constants/sizes.dart';
import '../../../../../../../utils/devices/responsive.dart';
import '../../../../../../../utils/helpers/helper_functions.dart';

class AddRecipeLevelSelector extends StatelessWidget {
  const AddRecipeLevelSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = JHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Difficuilty',
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
          child: Center(
            child: DropdownButton(
                hint: const Text(JTexts.choose),
                items: const [
                  DropdownMenuItem(
                    value: JTexts.easy,
                    child: Text(JTexts.easy),
                  ),
                  DropdownMenuItem(
                    value: JTexts.medium,
                    child: Text(JTexts.medium),
                  ),
                  DropdownMenuItem(
                    value: JTexts.hard,
                    child: Text(JTexts.hard),
                  ),
                ],
                underline: Container(
                  color: const Color.fromARGB(0, 255, 255, 255),
                ),
                onChanged: (String) {}),
          ),
        )
      ],
    );
  }
}
