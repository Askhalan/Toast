import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:toast/data/repository/grocessory_repository.dart';
import 'package:toast/features/user/grocesory/models/grocesoryModel.dart';
import 'package:toast/features/user/social/controller/post_view_controller.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';

class GrocesoryController extends GetxController {
  static GrocesoryController get instance => Get.find();
  static ViewPostController viewPostController = Get.find();
  final grocesoryRepository = Get.put(GrocesoryRepository());
  RxBool visibleDeleteBtn = false.obs;
  RxList allGrocesory = [].obs;
  final addIngredientTextController = TextEditingController();
  @override
  void onInit() {
    super.onInit();
    getGrocesoryList();
  }

   void toggleDeleteButtonVisibility() {
    visibleDeleteBtn.value = !visibleDeleteBtn.value;
  }

  //---------------------------------- Add To Hive ----------------------------------

  Future addToGrocesoryList(String title) async {
    log('This is TItle: ------ $title');
    final boxGrocesory = await Hive.openBox<GrocesoryModel>('grocesoryBox');
    final int id = await boxGrocesory.add(GrocesoryModel(
        ingredients: viewPostController.selectedIngredients.toList(),
        listName: title));

    await boxGrocesory.put(
        id,
        GrocesoryModel(
            ingredients: viewPostController.selectedIngredients.toList(),
            listName: title,
            id: id));
    await getGrocesoryList();
    log('${viewPostController.selectedIngredients}');
  }

  //---------------------------------- Get Data Hive ----------------------------------

  Future<void> getGrocesoryList() async {
    allGrocesory.clear();
    allGrocesory.addAll(await grocesoryRepository.fetchGrocesoryList());
  }

  //---------------------------------- Delete from Hive ----------------------------------

  void deleteGrocesoryList(int id) async {
    final boxGrocesory = await Hive.openBox<GrocesoryModel>('grocesoryBox');
    Get.defaultDialog(
        contentPadding: const EdgeInsets.all(JmSize.md),
        title: 'Delete List',
        middleText: 'This action cannot be reviced',
        confirm: ElevatedButton(
            onPressed: () {
              boxGrocesory.delete(id);
              getGrocesoryList();
              Navigator.of(Get.overlayContext!).pop();
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: JColor.error,
                side: const BorderSide(color: JColor.error)),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: JmSize.lg),
              child: Text('Delete'),
            )),
        cancel: OutlinedButton(
            onPressed: () {
              toggleDeleteButtonVisibility();
              Navigator.of(Get.overlayContext!).pop();
            },
            child: const Text('Cancel')));
  }

//---------------------------------- Add new Ingredient to List ----------------------------------

  Future addNewIngredientToGrocesoryList(GrocesoryModel grocesory) async {
    final newList = grocesory.ingredients;
    newList.add(addIngredientTextController.text);
    final newModel = GrocesoryModel(
        ingredients: newList, listName: grocesory.listName, id: grocesory.id);

    final boxGrocesory = await Hive.openBox<GrocesoryModel>('grocesoryBox');

    await boxGrocesory.put(grocesory.id, newModel);
    addIngredientTextController.clear();
    await getGrocesoryList();
    log('${viewPostController.selectedIngredients}');
  }

  //------------------------------ Bottom Sheet for Add new Ingredient  ---------------------------

  void addNewGrocesoryItem(GrocesoryModel grocesory) {
    Get.bottomSheet(
      Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: addIngredientTextController,
              decoration: const InputDecoration(hintText: 'New Item'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                addNewIngredientToGrocesoryList(grocesory);
                Navigator.of(Get.overlayContext!).pop();
              },
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }

  //------------------------------ Checkout Items from List  ---------------------------

 RxList<dynamic> deletedIngredients = <dynamic>[].obs;

  void toggleIngredient(String ingredient) {
    if (deletedIngredients.contains(ingredient)) {
      deletedIngredients.remove(ingredient);
    } else {
      deletedIngredients.add(ingredient);
    }
    update();
  }

  bool isSelected(String ingredient) {
    return deletedIngredients.contains(ingredient);
  }
  
}
