import 'package:flutter/material.dart';

import '../../../../../../common/app/widgets/decoration_items/custom_containers/constrained_container.dart';
import '../../../../../../../common/web/widgets/gap.dart';
import '../../../../../../../utils/constants/sizes.dart';
import '../../../../../../../utils/constants/text_strings.dart';
import '../../../../../../../utils/validators/validation.dart';

class AddRecipeDetails extends StatelessWidget {
  const AddRecipeDetails({
    super.key,
  });

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
            // controller: controller.username,
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
            // controller: controller.username,
            // expands: true,
            // maxLines: 2,
            decoration: const InputDecoration(labelText: JTexts.description),
          ),
        ),
      ],
    );
  }
}
