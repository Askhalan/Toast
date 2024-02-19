import 'package:flutter/material.dart';
import 'package:toast/features/user/authentication/contollers/onboarding_controller.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/devices/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top:JDeviceUtil.getAppBarHeight() ,
      right: JmSize.defaultSpace,
      child: TextButton(onPressed: ()=> OnBoardingController.instance.skipPage(),child: const Text('Skip'),));
  }
}