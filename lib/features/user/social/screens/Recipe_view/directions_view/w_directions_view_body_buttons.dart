import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/common/app/widgets/form%20elements/elevated_button.dart';
import 'package:toast/common/app/widgets/form%20elements/outlined_button.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/features/user/social/screens/Recipe_view/recipe_view/widgets/w_recipe_view_add-review.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';

class ViewDirectionsProcessingButtons extends StatelessWidget {
  const ViewDirectionsProcessingButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 1,
          child: JMOutlinedButton(
            icon: Icons.arrow_back_ios,
            onPressed: () {
              Get.back();
            },
          ),
        ),
        const JGap(w: JmSize.spaceBtwInputFields),
        Flexible(
          flex: 4,
          child: JMElevatedButton(
            text: 'Add Review',
            icon: Icons.arrow_forward_ios,
            onPressed: () {
              Get.bottomSheet(
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: JmSize.defaultSpace),
                    child: RecipeViewAddReview(),
                  ),
                  backgroundColor: JColor.secondary);
            },
          ),
        ),
      ],
    );
  }
}
