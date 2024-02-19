import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/features/user/authentication/contollers/signup_controller.dart';
import 'package:toast/utils/validators/validation.dart';

import '../../../../../common/app/widgets/decoration_items/custom_containers/constrained_container.dart';
import '../../../../../common/app/widgets/form elements/elevated_button.dart';
import '../../../../../common/web/widgets/gap.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
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
            h: JmSize.spaceBtwInputFields,
          ),
          const JGap(
            h: JmSize.spaceBtwInputFields,
          ),
          JTextFIeldContainer(
            child: TextFormField(
              validator: (value)=> JValidator.validateEmail(value),
              controller: controller.email,
              decoration: const InputDecoration(
                labelText: JTexts.email,
              ),
            ),
          ),
          const JGap(
            h: JmSize.spaceBtwInputFields,
          ),
          JTextFIeldContainer(
            child: TextFormField(
              // validator: (value)=> JValidator.validatePassword(value),
              controller: controller.password,
              decoration: const InputDecoration(
                labelText: JTexts.password,
              ),
              obscureText: true,
            ),
          ),
          const JGap(
            h: JmSize.spaceBtwInputFields*2,
          ),
          JMElevatedButton(text: 'Register', onPressed: () => controller.signup()),
          
        ],
      ),
    );
  }
}