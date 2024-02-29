import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/common/app/widgets/decoration_items/custom_containers/constrained_container.dart';
import 'package:toast/features/user/social/controller/add_recipe_controller.dart';

import '../../../../../../../common/web/widgets/gap.dart';
import '../../../../../../../utils/constants/sizes.dart';
import '../../../../../../../utils/constants/text_strings.dart';
import '../../../../../../../utils/validators/validation.dart';

class AddRecipeDetails extends StatelessWidget {
   AddRecipeDetails({
    super.key,
  });
  
 final AddRecipeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        //------------------------------------------------ TITLE FIELD ------------------------------------------------

        const JGap(
          h: JmSize.spaceBtwSections,
        ),
        JTextFIeldContainer(
          child: TextFormField(
            validator: (value) => JValidator.validateEmptyText('Title', value),
            controller: controller.title,
            decoration: const InputDecoration(labelText: JTexts.title),
          ),
        ),

        //------------------------------------------------ INFO FIELD ------------------------------------------------

        const JGap(
          h: JmSize.spaceBtwInputFields,
        ),
        JTextFIeldContainer(
          child: TextFormField(
            validator: (value) => JValidator.validateEmptyText('Title', value),
            controller: controller.description,
            // expands: true,
            // maxLines: 2,
            decoration: const InputDecoration(labelText: JTexts.description),
          ),
        ),
      ],
    );
  }
}
