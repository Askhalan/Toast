import 'package:get/get.dart';
import 'package:toast/utils/helpers/network_manager.dart';

class GeneralBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(NetworkManager());
    // Get.lazyPut<ScnDetailedRecipeViewController>(() => ScnDetailedRecipeViewController());

  }
  
}