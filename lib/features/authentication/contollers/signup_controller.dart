// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/data/repository/auth_repository.dart';
import 'package:toast/data/repository/user_repository.dart';
import 'package:toast/features/user/personalisation/model/user_model.dart';
import 'package:toast/features/authentication/screens/login/scn_login.dart';
import 'package:toast/features/authentication/screens/signup/scn_created_successfull.dart';
import 'package:toast/utils/constants/image_strings.dart';
import 'package:toast/utils/helpers/network_manager.dart';
import 'package:toast/utils/popups/full_screen_loaders.dart';
import 'package:toast/utils/popups/snackbars.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  //------------ Variables ------------
  final hidePassword = true.obs;
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final gender = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();

  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  //------------ Methods ------------

  signup() async {
    try {
      //--Start Loading

      JFullScreenLoaders.openLoadingDialog('We are processing your information', JImages.loading);
      

      //--Chck Internet Connectivity

      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected){
        JFullScreenLoaders.stopLoading();
        return;
        
      }

      //Form Validation
      if (!signupFormKey.currentState!.validate()) {
        JFullScreenLoaders.stopLoading();
        return;
      }

      final userCredential = await AuthenticationRepository.instance
          .registerUserWithEmail(email.text.trim(), password.text.trim());

      final newUser = UserModel(
          id: userCredential.user!.uid,
          username: username.text,
          email: email.text,
          firstName: firstName.text,
          lastName: lastName.text,
          gender: gender.text, profilePic: '');

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      

      Get.to(() => const ScnRegisteredSuccess());
    } catch (e) {
      print('--------------- from SIGN UP');
      print(e);
     JFullScreenLoaders.stopLoading();
      JMessages.snackbarerror(title: 'Error', message: e.toString());
    }
  }

  haveAccount() {
    Get.off(() =>  ScnLogin());
  }
}
