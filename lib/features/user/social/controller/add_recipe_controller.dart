// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:toast/data/repository/user_repository.dart';
import 'package:toast/features/user/social/controller/categeory_controller.dart';
import 'package:toast/features/user/social/controller/cusine_controller.dart';
import 'package:toast/features/user/social/models/categeory_model.dart';
import 'package:toast/features/user/social/models/cusine_model.dart';
import 'package:toast/utils/popups/snackbars.dart';

import '../../../../utils/constants/text_strings.dart';

class AddRecipeController extends GetxController {
  static AddRecipeController get instance => Get.find();
  final categeoryController = Get.put(CategeoryController());
  final cusineController = Get.put(CusineController());
  final userRepository = Get.put(UserRepository());

  //#######################################   VARIABLES   ########################################
  RxBool imageUploading = false.obs;
  RxInt cookingTime = 0.obs;
  RxInt noOfServes = 0.obs;
  RxString selectedCategeory = " ".obs;
  var selectedCuisine = " ".obs;
  var selectedDifficuilty = " ".obs;
  final title = TextEditingController();
  final description = TextEditingController();
  RxString imageUrl= ''.obs;
  //------------------------ LIST -------------------------

  List<String> catNamesList = [];
  List<String> cusNamesList = [];

  @override
  void onInit() {
    super.onInit();
    // Listen to changes in allCategeory and update catNamesList accordingly
    categeoryController.allCategeory.listen((List<CategeoryModel> models) {
      // Extract catNames from allCategeory and update catNamesList
      catNamesList = models.map((model) => model.catName).toList();
    });
    cusineController.allCusine.listen((List<CusineModel> models) {
      cusNamesList = models.map((model) => model.cusName).toList();
    });
  }

  final List<String> cusineList = ['Arabic', 'Italian', 'Indian', 'Mexican'];

  final List<String> difficuiltyLevelList = [
    JTexts.easy,
    JTexts.medium,
    JTexts.hard,
  ];

  //#########################################   METHODS   #########################################

  //------------------------------------- UPLOAD RECIPE IMAGE ------------------------------------

  Future<void> uploadRecipeImage() async {
    try {
      final image = await ImagePicker()
          .pickImage(source: ImageSource.gallery, imageQuality: 70);
      if (image != null) {
        imageUploading.value = true;
        imageUrl.value = await userRepository.uploadImage('post/Images/main/', image);
        print('-----------------from upload Recipe image()-------${imageUrl.value}');
        JMessages.snackbarSuccess(
            title: 'Congratulation', message: 'Image has been added');
      }
    } catch (e) {
      JMessages.snackbarerror(
          title: 'Error', message: 'Something went wrong: $e');
    } finally {
      imageUploading.value = false;
    }
  }

  void updateSelectedCategeory(String newValue) {
    selectedCategeory.value = newValue;
  }

  void updateSelectedCusine(String newValue) {
    selectedCuisine.value = newValue;
  }

  void updateSelectedDifficuilty(String newValue) {
    selectedDifficuilty.value = newValue;
  }

  void cookingTimeIncrease() {
    cookingTime.value += 5;
  }

  void cookingTimeDecrease() {
    cookingTime.value > 5 ? cookingTime.value -= 5 : null;
  }

  void noOfServeIncrease() {
    noOfServes.value += 1;
  }

  void noOfServeDecrease() {
    noOfServes.value >= 2 ? noOfServes.value -= 1 : null;
  }
}
