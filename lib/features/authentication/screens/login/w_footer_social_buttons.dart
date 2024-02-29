import 'package:flutter/material.dart';
import 'package:toast/features/authentication/contollers/login.controller.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class FooterSocialButtons extends StatelessWidget {
   FooterSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller=LoginController();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: JSize.spaceBtwSections),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OutlinedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: JmSize.md),
                    child: Image.asset(JImages.logoFacebook),
                  )),
              OutlinedButton(
                  onPressed: ()=>controller.googleSignin(),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: JmSize.md),
                    child: Image.asset(JImages.logoGoogle),
                  )),
              OutlinedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: JmSize.md),
                    child: Image.asset(JImages.logoApple),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
