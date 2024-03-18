
import 'package:flutter/material.dart';
import 'package:toast/common/app/widgets/texts/section_heading.dart';
import 'package:toast/features/user/social/screens/1.2%20Recipe_view/recipe_view/w_main_ingredient_tile.dart';
import 'package:toast/utils/constants/image_strings.dart';

class RecipeViewMainIngredients extends StatelessWidget {
  const RecipeViewMainIngredients({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        JSectionHeading(
          heading: 'Cuisines for you',
          isFixedColor: false,
          showActionButton: true,
          buttonText: 'See All',
          onPressed: () {},
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          // controller: scrollController,
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 13,
                  mainAxisSpacing: 13),
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return MainIngredientsGridTile(
              image: JImages.defaultImage,
              ingredientName: 'Ingredient',
              onTap: () {
                // Get.to(() => ScnGrocesoryList());
              },
            );
          },
        )
      ],
    );
  }
}


