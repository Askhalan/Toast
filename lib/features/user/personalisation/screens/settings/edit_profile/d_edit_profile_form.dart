import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/common/app/widgets/decoration_items/custom_containers/constrained_container.dart';
import 'package:toast/common/app/widgets/form%20elements/elevated_button.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/features/user/personalisation/controller/updater_profile_controller.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/constants/text_strings.dart';
import 'package:toast/utils/validators/validation.dart';


class EditProfileForm extends StatelessWidget {
  EditProfileForm({
    super.key,
  });
  final UpdateUserController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    
    return Form(
      key: controller.updateProfileFormKey,
      child: Column(
        children: [
          JTextFIeldContainer(
            child: TextFormField(
              validator: (value)=> JValidator.validateEmptyText('First Name', value),
              controller: controller.firstName,
              decoration: const InputDecoration(labelText: JTexts.firstname),
            ),
          ),
          const JGap(
            h: JmSize.spaceBtwInputFields,
          ),
          JTextFIeldContainer(
            child: TextFormField(
              validator: (value)=> JValidator.validateEmptyText('Last Name', value),
              controller: controller.lastName,
              decoration: const InputDecoration(labelText: JTexts.lastName),
            ),
          ),
          const JGap(
            h: JmSize.spaceBtwInputFields,
          ),
          JTextFIeldContainer(
            child: TextFormField(
              validator: (value)=> JValidator.validateEmptyText('Username', value),
              controller: controller.username,
              decoration: const InputDecoration(labelText: JTexts.username),
            ),
          ),

      
          const JGap(
            h: JmSize.spaceBtwSections *4,
          ),
          JMElevatedButton(text: 'Save Changes', onPressed: ()=> controller.updateProfileDetails()
          ),
          
        ],
      ),
    );
  }
}