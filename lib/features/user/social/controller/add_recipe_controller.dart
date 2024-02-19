import 'package:get/get.dart';

import '../../../../utils/constants/text_strings.dart';

class AddRecipeController extends GetxController {

  //#######################################   VARIABLES   ########################################

  RxInt cookingTime = 0.obs;
  RxInt noOfServes = 0.obs;

  RxString selectedCategeory = " ".obs;
  var selectedCuisine = " ".obs;
  var selectedDifficuilty = " ".obs;

  //------------------------ LIST -------------------------

  final List<String> categeoryList = [
    JTexts.easy,
    JTexts.medium,
    JTexts.hard,
  ];

  final List<String> cusineList = [
   'Arabic','Italian','Indian','Mexican'
  ];

  final List<String> difficuiltyLevelList = [
    JTexts.easy,
    JTexts.medium,
    JTexts.hard,
  ];

  //#########################################   METHODS   #########################################

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
    cookingTime.value+=5;
  }
  void cookingTimeDecrease() {
    cookingTime.value > 5 ?
    cookingTime.value-=5 : null ;
  }

 void noOfServeIncrease() {
    noOfServes.value+=1;
  }
  void noOfServeDecrease() {
    noOfServes.value >= 2 ?
    noOfServes.value-=1 : null ;
  }

}
