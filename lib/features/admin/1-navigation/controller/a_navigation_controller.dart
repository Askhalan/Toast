import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ANavigationController extends GetxController{
static ANavigationController get instance => Get.find();


//---Variables


final PageController pageController = PageController();
final selectedPageIndex = 0.obs;


}