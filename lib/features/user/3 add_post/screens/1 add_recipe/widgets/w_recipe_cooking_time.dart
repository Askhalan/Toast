import 'package:flutter/material.dart';

import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../utils/constants/text_strings.dart';
import '../../../../../../utils/devices/responsive.dart';
import '../../../../../../utils/helpers/helper_functions.dart';

class AddRecipeCookingTime extends StatelessWidget {
  const AddRecipeCookingTime({
    super.key,
  });

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
            IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
            Text(
              '20s',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.remove)),
          ]),
        )
      ],
    );
  }
}
