import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/features/user/social/controller/add_ingredients_controller.dart';
import 'package:toast/features/user/social/screens/Recipe_view/ingredients_view/d_ingredients_body.dart';
import 'package:toast/features/user/social/screens/Recipe_view/ingredients_view/d_ingredients_header.dart';
import 'package:toast/utils/constants/sizes.dart';

class ScnDetailedIngredientsView extends StatelessWidget {
  ScnDetailedIngredientsView({
    super.key,
    required this.allIngredients,
    required this.image,
    required this.title,
  });

  final AddIngredientsController ingredientController =
      Get.put(AddIngredientsController());

  final List allIngredients;
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(JmSize.defaultSpace),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //---------------------------------- INGREDIENTS HEADER ----------------------------------

              ViewIngredientsHeader(image: image, title: title),

              //------------------------------------ INGREDIENTS BODY ----------------------------------

              ViewIngredientsBody(allIngredients: allIngredients, title: title),

            ],
          ),
        ),
      ),
    );
  }
}


