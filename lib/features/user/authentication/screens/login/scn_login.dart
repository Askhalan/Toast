// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/utils/constants/paddings.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/constants/text_strings.dart';
import 'package:toast/utils/helpers/helper_functions.dart';

import 'w_divider_form.dart';
import 'w_footer_social_buttons.dart';
import 'w_login_form.dart';
import 'w_login_header.dart';

class ScnLogin extends StatelessWidget {
  const ScnLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = JHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: JPad.paddingWithAppbar,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

//---------------------------- Header ----------------------------
              ULoginHeader(),

//---------------------------- Boady ----------------------------

              ULoginForm(),
              
//---------------------------- Footer ----------------------------

              JFormDivider(dark: dark,dividerText:JTexts.orLoginWith ),
              JGap(
                        h: JmSize.spaceBtwSections*2,
                      ),
              FooterSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}







