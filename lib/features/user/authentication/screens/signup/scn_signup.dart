// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/features/user/authentication/screens/login/w_divider_form.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/constants/text_strings.dart';

import '../login/w_footer_social_buttons.dart';
import 'w_have_account.dart';
import 'w_register_form.dart';

class ScnSignup extends StatelessWidget {
  const ScnSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(JmSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

//---------------------------- Header ----------------------------

              Text(
                JTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              JGap(h: JSize.spaceBtwSections * 4),

//---------------------------- Body ----------------------------

              RegisterForm(),
              JGap(h: JmSize.spaceBtwSections),

//---------------------------- Footer ----------------------------

              JFormDivider(dark: false, dividerText: JTexts.orSignUpWith),
              
              FooterSocialButtons(),
              
              AlreadyHaveAccount(),

            ],
          ),
        ),
      ),
    );
  }
}
