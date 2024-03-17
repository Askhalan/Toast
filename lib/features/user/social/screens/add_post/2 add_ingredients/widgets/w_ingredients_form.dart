import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/features/user/social/controller/add_ingredients_controller.dart';

import 'w_ingredient_tile.dart';
import 'w_ingredients_add_btn.dart';

class AddIngredientForm extends StatelessWidget {
  const AddIngredientForm({
    super.key,
  });
  static AddIngredientsController get instance => Get.find();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(() {
        return ListView.builder(
          shrinkWrap: true,
          itemCount: instance.itemCount.value + 1,
          // physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return index == instance.itemCount.value
                ?

                //--------------- INGREDIENT ADD BUTTON ---------------

                const IngredientAddButton()
                :

                //--------------- INGREDIENT ADD FIELD ---------------

                AddIngredientTile(
                    index: index,
                    textEditingController: instance.textControllers[index],
                  );
          },
        );
      }),
    );
  }
}
