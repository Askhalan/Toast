import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/features/user/authentication/screens/signup/scn_signup.dart';

import '../../../../../common/app/widgets/elevated_button.dart';
import '../../../../../common/app/widgets/outlined_button.dart';
import '../../../../../common/app/widgets/text_form_field.dart';
import '../../../../../common/web/widgets/gap.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class ULoginForm extends StatelessWidget {
  const ULoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: JmSize.spaceBtwSections),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            //
            Container(
              constraints: const BoxConstraints(
                minHeight: 50.0,
                maxHeight: 55.0,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: JTexts.email,
                ),
              ),
            ),
            const JGap(
              h: JmSize.spaceBtwInputFields,
            ),
            Container(
              constraints: const BoxConstraints(
                minHeight: 50.0,
                maxHeight: 55.0,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: JTexts.password,
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                ),
              ),
            ),
            const JGap(
              h: JmSize.spaceBtwInputFields / 2,
            ),
            TextButton(
                onPressed: () {}, child: const Text(JTexts.forgetPassword)),
            const JGap(
              h: JmSize.spaceBtwSections,
            ),
            JMElevatedButton(
              text: JTexts.login,
              onPressed: () {},
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
