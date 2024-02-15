import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../common/app/widgets/form elements/elevated_button.dart';
import '../../../../../../common/app/widgets/form elements/outlined_button.dart';
import '../../../../../../common/web/widgets/gap.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../utils/constants/text_strings.dart';
import '../../3 add_directions/scn_add_directions.dart';
 
class IngredientsProcessingButtons extends StatelessWidget {
  const IngredientsProcessingButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 1,
          child: JMOutlinedButton(
                icon:Icons.arrow_back_ios ,
                onPressed: () {     
                  Get.back();         
                },
              ),
        ),
        const JGap(w: JmSize.spaceBtwInputFields),
        Flexible(
          flex: 4,
          child: JMElevatedButton(
            text: JTexts.next,
            icon: Icons.arrow_forward_ios,
            onPressed: () {
              Get.to(() => const ScnAddDirections());
            },
          ),
        ),
      ],
    );
  }
}