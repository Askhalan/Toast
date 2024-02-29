import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:toast/common/app/widgets/loaders/animation_loader.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/helpers/helper_functions.dart';

class JFullScreenLoaders {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_) => PopScope(child: Container(
          color: JHelperFunctions.isDarkMode(Get.context!)? JColor.dark : JColor.white,
          width: double.infinity,
          height: double.infinity,
          // ignore: prefer_const_constructors
          child: Column(
            children:  [
              const SizedBox(
                height: 250,
              ),
              JAnimationLoader(text: text, animation: animation),
            ],
          ),
        )));
  }


  static  stopLoading(){
    Navigator.of(Get.context!).pop();
  }
}
