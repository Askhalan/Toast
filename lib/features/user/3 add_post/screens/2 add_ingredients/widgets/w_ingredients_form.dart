import 'package:flutter/material.dart';

import 'w_ingredient_tile.dart';
import 'w_ingredients_add_btn.dart';

class AddIngredientForm extends StatelessWidget {
  const AddIngredientForm({
    super.key,
  });

  final int itemCount = 30;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: itemCount,
        // physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return index == itemCount - 1
              ?

              //--------------- INGREDIENT ADD BUTTON ---------------

              const IngredientAddButton()
              :

              //--------------- INGREDIENT ADD FIELD ---------------

              const AddIngredientTile();
        },
      ),
    );
  }
}
