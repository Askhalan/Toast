
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:toast/features/user/0%20authentication/screens/login/scn_login.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find(); //<--- finding the instance of  onboarding controller which is created earlier


  // Variables
  final pageController = PageController();
  Rx<int?> currentPageIndex = 0.obs;

  // Update current Index when Page Scroll 
  void updatePageIndicator(index)=> currentPageIndex.value = index;
  


  //Jump to the specific dot selected page
  void dotNavigationClick(int index) {
  currentPageIndex.value = index;
  pageController.animateToPage(
    index,
    duration: const Duration(milliseconds: 400), // Adjust the duration as needed
    curve: Curves.ease, // Adjust the curve as needed
  );
}



  // Update current page & Jump to next page
  void nextPage(){
    if(currentPageIndex.value ==1){
      final storage = GetStorage();
      storage.write('isFirstTime',false);

      Get.offAll(const ScnLogin());
    }else{
      int page = currentPageIndex.value! +1;
      pageController.jumpToPage(page);
    }
  }


  //Update current index & Jump to the last page
  void skipPage(){
    currentPageIndex.value =1;
    Get.offAll(const ScnLogin());
  } 
}