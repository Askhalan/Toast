// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/data/repository/auth_repository.dart';
import 'package:toast/data/repository/user_repository.dart';
import 'package:toast/features/user/authentication/screens/login/scn_login.dart';
import 'package:toast/features/user/personalisation/model/user_model.dart';
import 'package:toast/features/user/personalisation/screens/settings/settings/scn_reauthenticate_user.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/constants/text_strings.dart';
import 'package:toast/utils/popups/snackbars.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();
  final userRepository = Get.put(UserRepository());

  final profileLoading = false.obs;
  Rx<UserModel> user = UserModel.empty().obs;
  final email = TextEditingController();
  final password = TextEditingController();
  final reAuthFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchUserRecord();
  }

  //----------------------------------------- FETCH USER DETAILS ------------------------------------
  Future<void> fetchUserRecord() async {
    try {
      profileLoading.value = true;
      final user = await userRepository.fetchUserDetails();
      this.user(user);
    } catch (e) {
      user(UserModel.empty());
    } finally {
      profileLoading.value = false;
    }
  }

  //----------------------------------------- DELETE ACCOUNT WARNING ------------------------------------

  void deleteAccountWarningPopup() {
    Get.defaultDialog(
        contentPadding: const EdgeInsets.all(JmSize.md),
        title: 'Delete Account',
        middleText: JTexts.accountDeleteWarningMessage,
        confirm: ElevatedButton(
            onPressed: () => deleteUserAccount(),
            style: ElevatedButton.styleFrom(
                backgroundColor: JColor.error,
                side: BorderSide(color: JColor.error)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: JmSize.lg),
              child: Text('Delete'),
            )),
        cancel: OutlinedButton(
            onPressed: () => Navigator.of(Get.overlayContext!).pop(),
            child: Text('Cancel')));
  }

  //----------------------------------------- DELETE ACCOUNT METHOD ------------------------------------

  deleteUserAccount() async {
    try {
      final auth = AuthenticationRepository.instance;
      final provider =
          auth.authUser!.providerData.map((e) => e.providerId).first;
      if (provider == 'password') {
        Get.to(() => ReAuthUSer());
      }
    } catch (e) {
      JMessages.snackbarerror(title: 'Error', message: e.toString());
    }
  }

//----------------------------------------- DELETE ACCOUNT METHOD ------------------------------------

  Future reAuthenticateEmailAndPassworduser() async {
    try{
      if (!reAuthFormKey.currentState!.validate()) {
        return;
      }
      await AuthenticationRepository.instance.reAuthenticateEmailAndPasswordUser(email.text , password.text);
      await AuthenticationRepository.instance.deleteAccount();
      Get.off(()=> ScnLogin());

    } catch(e){
      JMessages.snackbarerror(title: 'Error', message: e.toString());
    }
  }
}
