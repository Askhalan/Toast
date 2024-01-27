// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/utils/constants/image_strings.dart';

import '../../../../../utils/constants/text_strings.dart';
import '../../contollers/onboarding_controller.dart';
import 'w_onboarding_navigation.dart';
import 'w_onboarding_nextbutton.dart';
import 'w_onboarding_page.dart';
import 'w_onboarding_skip.dart';

class ScnOnBoarding extends StatelessWidget {
  const ScnOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {

  
    final controller = Get.put(OnBoardingController()); //<--- creating a new onboarding controller 
    
    return Scaffold(
      body: Stack(
        children: [
//----------------------------- Scrollable Pages -----------------------------
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: JImages.onBoardingImage1,
                title: JTexts.onBoardingTitle1,
                subTitle: JTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: JImages.onBoardingImage2,
                title: JTexts.onBoardingTitle2,
                subTitle: JTexts.onBoardingSubTitle2,
              ),
            ],
          ),

//------------------------------- Skip Button -------------------------------

          OnBoardingSkip(),

//----------------------------- Navigation Dots -----------------------------

          OnBoardingNavigation(),

//----------------------------- Circular Button -----------------------------
          OnBoardingNextButton()
        ],
      ),
    );
  }
}


