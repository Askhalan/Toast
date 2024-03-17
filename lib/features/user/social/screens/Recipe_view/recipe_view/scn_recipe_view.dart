// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/common/app/widgets/form%20elements/elevated_button.dart';
import 'package:toast/common/app/widgets/form%20elements/outlined_button.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/features/user/social/controller/post_view_controller.dart';
import 'package:toast/features/user/social/models/post_model.dart';
import 'package:toast/features/user/social/screens/Recipe_view/directions_view/scn_directions_view.dart';
import 'package:toast/features/user/social/screens/Recipe_view/ingredients_view/scn_ingredients_view.dart';
import 'package:toast/features/user/social/screens/Recipe_view/recipe_view/d_recipe_view_header.dart';
import 'package:toast/features/user/social/screens/Recipe_view/recipe_view/widgets/w_recipe-view_info.dart';
import 'package:toast/features/user/social/screens/Recipe_view/recipe_view/widgets/w_recipe_view_add-review.dart';
import 'package:toast/features/user/social/screens/Recipe_view/recipe_view/widgets/w_recipe_view_main_ingredients.dart';
import 'package:toast/features/user/social/screens/Recipe_view/recipe_view/widgets/w_recipe_view_review_tile.dart';
import 'package:toast/utils/constants/sizes.dart';

class ScnDetailedRecipeView extends StatelessWidget {
  ScnDetailedRecipeView({
    super.key,
    required this.post,
  });

  final PostModel post;
  final controller = Get.put(ViewPostController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            
            //--------------------------------------- RECIPE  HEADER ---------------------------------------

            RecipeViewHeader(
                image: post.mainImage,
                username: '',
                time: post.cookingTime.toString(),
                level: post.dificuilty,
                rating: '',
                serves: post.serves.toString()),

            //---------------------------------------- RECIPE  BODY ----------------------------------------

            JGap(h: JmSize.spaceBtwSections * 2),
            Container(
              padding:
                  EdgeInsets.symmetric(horizontal: JmSize.defaultSpace * 0.7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //---------------------- RECIPE  INFO ----------------------

                  RecipeViewInfo(
                      title: post.title, description: post.description),

                  //-------------------- MAIN INGREDIENTS --------------------

                  JGap(h: JmSize.spaceBtwSections),
                  RecipeViewMainIngredients(),

                  //--------------------- VIEW INGREDIENTS BUTTON  ------------------

                  JGap(h: JmSize.spaceBtwSections),
                  JMOutlinedButton(
                    text: 'View Ingredients',
                    onPressed: () {
                      Get.to( ScnDetailedIngredientsView(allIngredients:post.ingredients,title: post.title,image:post.mainImage));
                    },
                  ),

                  //--------------------- START COOKING BUTTON  ------------------
                  
                  JGap(h: JmSize.spaceBtwInputFields),
                  JMElevatedButton(
                    text: 'Start Cooking',
                    icon: Icons.arrow_forward_ios,
                    onPressed: () {
                      Get.to(() => ScnDetailedDirectionsView(allDirections:post.directions,title: post.title,image:post.mainImage));
                    },
                  ),

                  //----------------------- ADD REVIEWS  ---------------------

                  JGap(h: JmSize.spaceBtwSections),
                  RecipeViewAddReview(),

                  //---------------------- OTHERS REVIEWS  -------------------

                  JGap(h: JmSize.spaceBtwSections),

                  ListView.separated(
                    shrinkWrap: true,
                    itemCount: 10,
                    physics: NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, index) => JGap(
                      h: JmSize.defaultSpace,
                    ),
                    itemBuilder: (context, index) {
                      return RecipeViewReviewTile(
                        rating: 3,
                        reviewText: 'deqd, d dqiudhiqdidd wd owdodowdlndh wo',
                      );
                    },
                  ),

                  SizedBox(
                    height: 400,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
