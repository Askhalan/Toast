import 'package:get/get.dart';
// ignore: unused_import
import 'package:toast/features/user/social/models/post_model.dart';

class ViewPostController extends GetxController {
static ViewPostController get instance => Get.find();

  //-------------------------------- VIEW INGREDIENTS -------------------------------

   RxList<dynamic> selectedIngredients = <dynamic>[].obs;

  void toggleIngredient(String ingredient) {
    if (selectedIngredients.contains(ingredient)) {
      selectedIngredients.remove(ingredient);
    } else {
      selectedIngredients.add(ingredient);
    }
    update();
  }

  void selectAll(List ingredients) {
    selectedIngredients.assignAll(ingredients);
    update();
  }

  List getSelectedIngredients() {
    return selectedIngredients.toList();
  }

  bool isSelected(String ingredient) {
    return selectedIngredients.contains(ingredient);
  }
   bool areAllSelected(List ingredients) {
    return selectedIngredients.length == ingredients.length;
  }

   void deselectAll() {
    selectedIngredients.clear();
    update();
  }

}

