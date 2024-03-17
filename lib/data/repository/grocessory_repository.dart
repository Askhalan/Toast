import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:toast/features/user/grocesory/models/grocesoryModel.dart';

class GrocesoryRepository extends GetxController{
  static GrocesoryRepository get instance => Get.find();

  Future<List<GrocesoryModel>> fetchGrocesoryList() async {
    final boxGrocesory = await Hive.openBox<GrocesoryModel>('grocesoryBox');
    return boxGrocesory.values.toList();
  }
  
  
}