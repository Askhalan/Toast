import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/common/app/widgets/decoration_items/custom_containers/constrained_container.dart';
import 'package:toast/features/authentication/contollers/login.controller.dart';
import 'package:toast/features/authentication/screens/signup/scn_signup.dart';
import 'package:toast/utils/validators/validation.dart';

import '../../../../common/app/widgets/form elements/elevated_button.dart';
import '../../../../common/app/widgets/form elements/outlined_button.dart';
import '../../../../common/web/widgets/gap.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class ULoginForm extends StatelessWidget {
  const ULoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = LoginController();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: JmSize.spaceBtwSections),
      child: Form(
        key: controller.loginFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            
            //----------------------------------------- EMAIL ------------------------------------

            JTextFIeldContainer(
              child: TextFormField(
                controller: controller.email,
                validator: (value) => JValidator.validateEmail(value),
                decoration: const InputDecoration(
                  labelText: JTexts.email,
                ),
              ),
            ),
            const JGap(
              h: JmSize.spaceBtwInputFields,
            ),

          //----------------------------------------- PASSWORD ------------------------------------

            JTextFIeldContainer(
              child: TextFormField(
                controller: controller.password,
                validator: (value) => JValidator.validateEmptyText(value,'Password'),
                decoration: const InputDecoration(
                  labelText: JTexts.password,
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                ),
              ),
            ),
            const JGap(
              h: JmSize.spaceBtwInputFields / 2,
            ),

          //----------------------------------------- Button ------------------------------------

            TextButton(
                onPressed: () {}, child: const Text(JTexts.forgetPassword)),
            const JGap(
              h: JmSize.spaceBtwSections,
            ),
            JMElevatedButton(
              text: JTexts.login,
              onPressed: () {
                controller.login();
              },
            ),
            const JGap(
              h: JmSize.spaceBtwInputFields,
            ),
            JMOutlinedButton(
              text: JTexts.createAccount,
              onPressed: () {
                Get.to(const ScnSignup());
              },
            ),
          ],
        ),
      ),
    );
  }
}
