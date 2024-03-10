import 'package:get/get.dart';
import 'package:toast/features/user/social/screens/1.2%20Recipe_view/recipe_view/scn_recipe_view.dart';
import 'package:toast/utils/helpers/network_manager.dart';

class GeneralBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(NetworkManager());
    // Get.lazyPut<ScnDetailedRecipeViewController>(() => ScnDetailedRecipeViewController());

  }
  
}