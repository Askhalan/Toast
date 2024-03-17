import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/data/repository/user_repository.dart';
import 'package:toast/features/user/personalisation/controller/user_controller.dart';
import 'package:toast/features/user/social/screens/navigation_menu/screens/nav_menu.dart';
import 'package:toast/utils/popups/snackbars.dart';

class UpdateUserController extends GetxController{
  static UpdateUserController get instance => Get.find();

  //------------ Variables ------------
  final userController =  UserController.instance;
  final userRepository = Get.put(UserRepository());

  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final gender = TextEditingController();
  FocusNode focusNode = FocusNode();
  final bioTextController = TextEditingController();
  RxBool isBioEditable = false.obs;


  GlobalKey<FormState> updateProfileFormKey = GlobalKey<FormState>();


  @override
  void onInit() {
    initializeData();
    super.onInit();
  }
  
   initializeData() async{

    firstName.text = userController.user.value.firstName;
    lastName.text = userController.user.value.lastName;
    username.text = userController.user.value.username; 

  }

  //------------------------------------------ Update Profile Details -------------------------------------

  updateProfileDetails() async {
    try {
      //Form Validation
      if (!updateProfileFormKey.currentState!.validate()) {
        return;
      }

      Map<String, dynamic> profileDetails = { 'FirstName':firstName.text,'LastName':lastName.text,'Username':username.text,};
      await userRepository.updateSingleField(profileDetails);

      userController.user.value.firstName = firstName.text;
      userController.user.value.lastName = lastName.text;
      userController.user.value.username = username.text;

      Get.offAll(() => const NavigationMenu());
    } catch (e) {
      JMessages.snackbarerror(title: 'Error', message: e.toString());
    }
  }

  //-------------------------------------------- Update Bio  ----------------------------------------

  updateBio() async {
    try {

      Map<String, dynamic> profileDetails = { 'Bio':bioTextController.text,};
      await userRepository.updateSingleField(profileDetails);

      userController.user.value.bio = bioTextController.text;

      Get.offAll(() => const NavigationMenu());
    } catch (e) {
      JMessages.snackbarerror(title: 'Error', message: e.toString());
    }
  }

//------------------------------------------ Toggle Bio Editable -------------------------------------

void toggleBioeditable(){
  isBioEditable.value = !isBioEditable.value;
}



}