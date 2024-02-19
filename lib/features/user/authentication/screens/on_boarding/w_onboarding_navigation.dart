import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:toast/features/user/authentication/contollers/onboarding_controller.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/devices/device_utility.dart';
import 'package:toast/utils/helpers/helper_functions.dart';

class OnBoardingNavigation extends StatelessWidget {
   const OnBoardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final controller = OnBoardingController(); //--- we are just calling the controller , not passing it neither creating it
    final dark = JHelperFunctions.isDarkMode(context);

    return Positioned(
        bottom: JDeviceUtil.getBottomNavigationBarHeight() + 10,
        left: JmSize.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked:controller.dotNavigationClick,
          count: 2,
          effect:
              ExpandingDotsEffect(activeDotColor: dark ? JColor.light : JColor.dark, dotHeight: 6),
        ));
  }
}
