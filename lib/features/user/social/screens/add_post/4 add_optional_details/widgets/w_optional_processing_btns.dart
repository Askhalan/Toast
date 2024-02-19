import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/common/app/widgets/form%20elements/elevated_button.dart';
import 'package:toast/common/app/widgets/form%20elements/outlined_button.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/constants/text_strings.dart';

 
class AddOptionalProcessingButtons extends StatelessWidget {
  const AddOptionalProcessingButtons({
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
            text: JTexts.save,
            // icon: Icons.arrow_forward_ios,
            onPressed: () {
              
            },
          ),
        ),
      ],
    );
  }
}