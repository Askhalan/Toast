// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/common/app/widgets/form%20elements/elevated_button.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/features/user/personalisation/controller/user_controller.dart';
import 'package:toast/features/user/personalisation/model/user_model.dart';
import 'package:toast/features/user/social/models/post_model.dart';
import 'package:toast/features/user/social/screens/1.2%20Recipe_view/recipe_view/d_recipe_view_header.dart';
import 'package:toast/features/user/social/screens/1.2%20Recipe_view/recipe_view/w_recipe-view_info.dart';
import 'package:toast/features/user/social/screens/1.2%20Recipe_view/recipe_view/w_recipe_view_add-review.dart';
import 'package:toast/features/user/social/screens/1.2%20Recipe_view/recipe_view/w_recipe_view_main_ingredients.dart';
import 'package:toast/features/user/social/screens/1.2%20Recipe_view/recipe_view/w_recipe_view_review_tile.dart';
import 'package:toast/utils/constants/sizes.dart';

class ScnDetailedRecipeView extends StatelessWidget {
   ScnDetailedRecipeView(
      {super.key, required this.post, });

  final PostModel post;


  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //--------------------------------------- RECIPE  HEADER ---------------------------------------

            RecipeViewHeader(
                image: post.mainImage,
                usename: '',
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

                  RecipeViewInfo(),

                  //-------------------- MAIN INGREDIENTS --------------------

                  JGap(h: JmSize.spaceBtwSections),
                  RecipeViewMainIngredients(),

                  //--------------------- NEXT PAGE BUTTON  ------------------
                  JGap(h: JmSize.spaceBtwSections),
                  JMElevatedButton(
                    text: 'Start Cooking',
                    icon: Icons.arrow_forward_ios,
                    onPressed: () {
                      // Get.to(() =>  ScnAddIngredients());
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
