import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/common/app/widgets/loaders/shimmers/shimmer_effect.dart';
import 'package:toast/features/user/social/controller/add_recipe_controller.dart';
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
  final  AddRecipeController controller = Get.find() ;

  @override
  Widget build(BuildContext context) {
    final isDark = JHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => controller.uploadRecipeImage(),
      child: Obx(
        () => Container(
            width: double.infinity,
            height: JFluid.percentWidth(context: context, percent: 90),
            decoration: BoxDecoration(
              color: isDark ? JColor.black : JColor.lightGrey,
              border: Border.all(color: isDark ? JColor.darkGrey : JColor.grey),
              borderRadius: BorderRadius.circular(JSize.borderRadLg),
            ),
            child: controller.imageUrl.value == ''
                ? controller.imageUploading.value
                    ? JShimmerEffect(width: double.infinity, height: JFluid.percentWidth(context: context, percent: 90))
                    : Column(
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
                      )
                : ClipRRect(
                  borderRadius: BorderRadius.circular(JSize.borderRadLg),
                  child: Image.network(
                      controller.imageUrl.value,
                      fit: BoxFit.cover,
                    ),
                )),
      ),
    );
  }
}
