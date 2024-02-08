// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/data/repository/auth_repository.dart';
import 'package:toast/data/repository/user_repository.dart';
import 'package:toast/features/user/authentication/models/user_model.dart';
import 'package:toast/features/user/authentication/screens/signup/scn_created_successfull.dart';
import 'package:toast/utils/popups/snackbars.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  //------------ Variables ------------

  final name = TextEditingController();
  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();

  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  //------------ Methods ------------

  signup() async {
    try {
      //Form Validation
      if (!signupFormKey.currentState!.validate()) {
        return;
      }

      final userCredential = await AuthenticationRepository.instance
          .registerUserWithEmail(email.text.trim(), password.text);

      final newUser = UserModel(
          id: userCredential.user!.uid,
          username: username.text,
          email: email.text,
          // password: password.text,
          name: name.text);

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      Get.to(()=>const ScnRegisteredSuccess());


    } catch (e) { 
      JMessages.snackbarerror(title: 'Error', message:  e.toString());
    } 
  }
}
