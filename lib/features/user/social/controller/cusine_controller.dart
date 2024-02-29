// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:toast/data/repository/cusine_repository.dart';
import 'package:toast/data/repository/user_repository.dart';
import 'package:toast/features/admin/3%20a_ingredients/screens/widgets/w_add_categeory_popup.dart';
import 'package:toast/features/user/social/models/cusine_model.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/popups/snackbars.dart';

class CusineController extends GetxController {
  static CusineController get instance => Get.find();
  final userRepository = Get.put(UserRepository());

  RxBool isLoading = false.obs;
  RxList<CusineModel> allCusine = <CusineModel>[].obs;
  final cusineRepository = Get.put(CusineRepository());

  @override
  void onInit() {
    getAllCusine();
    super.onInit();
  }

  Future<void> getAllCusine() async {
    try {
      //-- Enabling the loader
      isLoading.value = true;

      //-- Fetching all the categeory from the server
      final categeories = await cusineRepository.getAllCusine();

      //-- Storing all the fetched data into a RxList as locally
      allCusine.assignAll(categeories);

    } catch (e) {
      JMessages.snackbarerror(title: 'error', message: e.toString());
    } finally {
      isLoading.value=false;
    }
  }


    Future<void> uploadUserProfilePicture() async {
    try {
      final image = await ImagePicker()
          .pickImage(source: ImageSource.gallery, imageQuality: 70);
      if (image != null) {
        final imageUrl =
            await userRepository.uploadImage('Users/Images/Profile/', image);
        Map<String, dynamic> json = {'ProfilePic': imageUrl};
        await userRepository.updateSingleField(json);
       
   
        JMessages.snackbarSuccess(
            title: 'Congratulation',
            message: 'Your Profile Image has been updated');
      }
    } catch (e) {
      JMessages.snackbarerror(
          title: 'Error', message: 'Something went wrong: $e');
    } finally {
     
    }
  }


//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> -------------------- ADMIN --------------------< <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<






  //----------------------------------------- ADD CATEGEORY ------------------------------------

  void addCusine() {
    Get.defaultDialog(
        contentPadding: const EdgeInsets.all(JmSize.md),
        title: 'Add New Cusine',
        content: AddCategeoryPopup(),
        confirm: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: JColor.success,
                side: BorderSide(color: JColor.success)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: JmSize.lg),
              child: Text('Add'),
            )),
        cancel: OutlinedButton(
            onPressed: () => Navigator.of(Get.overlayContext!).pop(),
            child: Text('Cancel')));
  }


    //----------------------------------------- UPLOAD Categeory  Image ------------------------------------


  Future<void> uploadImageAdmin() async {
    try {
      final image = await ImagePicker()
          .pickImage(source: ImageSource.gallery, imageQuality: 70);
      if (image != null) {
        final imageUrl =
            await userRepository.uploadImage('Data/Cusine/Images/', image);

            print('----------------------------------------------------------------------------------');
            print('----------------------------------------------------------------------------------');
            print('----------------------------------------------------------------------------------');
            print(imageUrl);

        // Map<String, dynamic> json = {'ProfilePic': imageUrl};
        // await userRepository.updateSingleField(json);
        JMessages.snackbarSuccess(
            title: 'Congratulation',
            message: 'Image has been updated');
      }
    } catch (e) {
      JMessages.snackbarerror(
          title: 'Error', message: 'Something went wrong: $e');
    } finally {
    }
  }
}


