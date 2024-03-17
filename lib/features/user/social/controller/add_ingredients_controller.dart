import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddIngredientsController extends GetxController {
static AddIngredientsController get instance => Get.find();
final RxInt itemCount = 1.obs;
final List<TextEditingController> textControllers = [];


  // List of strings to store the text from text editing controllers
  List getTextList() {
    List textList = [];
    for (TextEditingController controller in textControllers) {
      textList.add(controller.text);
    }
    return textList;
  }
  
  @override
  void onInit() {
    super.onInit();
    // Initialize text controllers for initial item count
    for (int i = 0; i < itemCount.value; i++) {
      textControllers.add(TextEditingController());
    }
  }

  void addItem() {
    itemCount.value++;
    textControllers.add(TextEditingController());
    update();

  }

  
  void removeItem(int index) {
    textControllers.removeAt(index);
    itemCount.value--;
     update();
  }


  @override
  void onClose() {
    // Dispose all text controllers to prevent memory leaks
    for (var controller in textControllers) {
      controller.dispose();
    }
    super.onClose();
  }

}

