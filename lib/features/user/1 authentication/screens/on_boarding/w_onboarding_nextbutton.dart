// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:toast/features/user/1%20authentication/contollers/onboarding_controller.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/devices/device_utility.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: JDeviceUtil.getBottomNavigationBarHeight(),
        right: JmSize.defaultSpace,
        child: ElevatedButton(
            onPressed: ()=> OnBoardingController.instance.nextPage(),
            style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                // maximumSize: Size(300, 300),
                // minimumSize: Size(300, 10),
                animationDuration: Duration(microseconds: 100)),
            child: Icon(Icons.arrow_forward_ios)));
  }
}