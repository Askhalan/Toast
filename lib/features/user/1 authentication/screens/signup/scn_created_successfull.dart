// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/common/web/widgets/button.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/features/user/1%20authentication/screens/login/scn_login.dart';
import 'package:toast/utils/constants/image_strings.dart';
import 'package:toast/utils/constants/paddings.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/constants/text_strings.dart';
import 'package:toast/utils/devices/responsive.dart';

class ScnRegisteredSuccess extends StatelessWidget {
  const ScnRegisteredSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: JPad.paddingWithAppbar,
          child: Column(
            children: [

              
              Image(
                image: AssetImage(JImages.createdSUccessfully),
                width: JFluid.percentWidth(context: context, percent: 95),
              ),
              Text(
                JTexts.yourAccountCreatedTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              JGap(
                h: JmSize.spaceBtwItems,
              ),
              Text(
                JTexts.yourAccountCreatedSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              JGap(
                h: JmSize.spaceBtwSections * 2,
              ),
              JButtonPrimary(
                text: 'Continue',
                onPressed: () => Get.to(() => ScnLogin()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
