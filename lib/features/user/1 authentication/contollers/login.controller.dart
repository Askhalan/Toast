import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../data/repository/auth_repository.dart';
import '../../../../utils/popups/snackbars.dart';
import '../../2 feeds/screens/scn_home.dart';
import '../../navigation_menu/screens/nav_menu.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

//------------ Variables ------------

  final email = TextEditingController();
  final password = TextEditingController();
  final loginFormKey = GlobalKey<FormState>();

//------------ Methods ------------
  login() async {
    try {
      // Form Validation;
      // if (!loginFormKey.currentState!.validate()) {
      //   return;
      // }

      // await AuthenticationRepository.instance
      //     .loginUserWithEmail(email.text.trim(), password.text);

      // Get.to(() =>  const HomeScn());
      Get.to(() =>   NavigationMenu());
      
    } catch (e) {
      JMessages.snackbarerror(title: 'Error', message: e.toString());
    } 
  }

}
