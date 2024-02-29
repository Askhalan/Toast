import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:toast/data/repository/user_repository.dart';
import 'package:toast/utils/popups/snackbars.dart';

class AddOptionalController extends GetxController {
  static AddOptionalController get instance => Get.find();
  RxBool imageUploading = false.obs;
  final RxInt itemCount = 1.obs;
  final youtubeLinkController = TextEditingController();
  final List<String> imageUrls = [];
  RxString imageUrl = ''.obs;
  final userRepository = Get.put(UserRepository());


  void addItem(String url) {
    if (itemCount.value < 6) {
      itemCount.value++;
      imageUrls.add(imageUrl.value);
    }
    update();
  }

  void removeItem(int index) {
    imageUrls.removeAt(index);
    itemCount.value--;
    update();
  }

  Future<void> uploadOptionalImage() async {
    try {
      final image = await ImagePicker()
          .pickImage(source: ImageSource.gallery, imageQuality: 70);
      if (image != null) {
        imageUploading.value = true;
        imageUrl.value =
            await userRepository.uploadImage('post/Images/optional/', image);
        addItem(imageUrl.value);
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
}
