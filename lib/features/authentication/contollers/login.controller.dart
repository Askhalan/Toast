import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/data/repository/auth_repository.dart';
import 'package:toast/features/user/personalisation/controller/user_controller.dart';
import 'package:toast/utils/constants/image_strings.dart';
import 'package:toast/utils/helpers/network_manager.dart';
import 'package:toast/utils/popups/full_screen_loaders.dart';
import '../../../utils/popups/snackbars.dart';
import '../../user/social/screens/0 navigation_menu/screens/nav_menu.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();
  final userController = Get.put(UserController());

//------------ Variables ------------

  final email = TextEditingController();
  final password = TextEditingController();
  final loginFormKey = GlobalKey<FormState>();

//------------------------------------ LOGIN ------------------------------------
  login() async {
    try {
      if (!loginFormKey.currentState!.validate()) {
        return;
      }
      await AuthenticationRepository.instance
          .loginUserWithEmail(email.text.trim(), password.text);
     AuthenticationRepository.deviceStorage.write('isLogedin', true);
      Get.offAll(() => const NavigationMenu());
    } catch (e) {
      JMessages.snackbarerror(title: 'Error', message: e.toString());
    }
  }

//------------------------------ SIGNIN WITH GOOGLE ------------------------------

  googleSignin() async {
    try {
      //--Start Loading

      JFullScreenLoaders.openLoadingDialog('', JImages.loading);

      //--Chck Internet Connectivity

      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        JFullScreenLoaders.stopLoading();
        return;
      }

      final userCredentials =
          await AuthenticationRepository.instance.signinWithGoogle();
      userController.saveUserRecord(userCredentials);

      AuthenticationRepository.deviceStorage.write('isLogedin', true);
      
      Get.offAll(() => const NavigationMenu());
    } catch (e) {
      JFullScreenLoaders.stopLoading();
      JMessages.snackbarerror(title: 'Error', message: e.toString());
    }
  }
}
