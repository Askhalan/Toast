import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import '../../../../../../../common/web/widgets/gap.dart';
import '../../../../../../../utils/constants/colors.dart';
import '../../../../../../../utils/constants/sizes.dart';
import '../../../../../../../utils/constants/text_strings.dart';
import '../../../../../../../utils/devices/responsive.dart';
import '../../../../../../../utils/helpers/helper_functions.dart';

class AddRecipeUploadImage extends StatelessWidget {
  AddRecipeUploadImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = JHelperFunctions.isDarkMode(context);
    return Container(
      width: double.infinity,
      height: JFluid.percentWidth(context: context, percent: 90),
      decoration: BoxDecoration(
        color: isDark ? JColor.black : JColor.lightGrey,
        border: Border.all(color: isDark ? JColor.darkGrey : JColor.grey),
        borderRadius: BorderRadius.circular(JSize.borderRadLg),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(UniconsLine.image_upload),
          const JGap(
            h: 10.0,
          ),
          Text(
            JTexts.uploadRecipieImage,
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ],
      ),
    );
  }
}
