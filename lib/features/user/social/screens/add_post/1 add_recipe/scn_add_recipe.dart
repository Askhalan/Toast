// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/common/app/widgets/appbar/appbar.dart';
import 'package:toast/common/app/widgets/appbar/appbar_widgets/w_user_profile_icon.dart';
import 'package:toast/common/app/widgets/form%20elements/elevated_button.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/features/user/social/controller/add_recipe_controller.dart';
import 'package:toast/features/user/social/screens/add_post/1%20add_recipe/widgets/w_recipe_categeory_selector.dart';
import 'package:toast/features/user/social/screens/add_post/1%20add_recipe/widgets/w_recipe_cuisine_selector.dart';
import 'package:toast/features/user/social/screens/add_post/1%20add_recipe/widgets/w_recipe_serves.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/constants/text_strings.dart';
import '../2 add_ingredients/scn_add_ingredients.dart';
import 'widgets/w_recipe_cooking_time.dart';
import 'widgets/w_recipe_details.dart';
import 'widgets/w_recipe_level_selector.dart';
import 'widgets/w_recipe_upload_image.dart';

class ScnAddRecipe extends StatelessWidget {
  ScnAddRecipe({super.key, this.scrollController});

  final scrollController;
  final AddRecipeController pageController = Get.put(AddRecipeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: JAppbar(
        title: Text(
          JTexts.addRecipe,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: const [UserProfileIcon()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(JmSize.defaultSpace),
        child: Form(
            child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: [
              //------------------------------------------------ Title & Description FIELD -----------------------------------------

              const AddRecipeDetails(),

              //------------------------------------------------ UPLOAD IMAGE FIELD ------------------------------------------------

              const JGap(h: JmSize.spaceBtwInputFields),
              AddRecipeUploadImage(),

              //------------------------------------------------- CATEGRORY  FIELD -------------------------------------------------

              const JGap(h: JmSize.spaceBtwSections),
               AddRecipeCategeorySelector(),

              //--------------------------------------------------- CUISINE  FIELD -------------------------------------------------

              const JGap(h: JmSize.spaceBtwInputFields),
               AddRecipeCusineSelector(),

              //------------------------------------------------ DIFICUILT LEVEL FIELD ---------------------------------------------

              const JGap(h: JmSize.spaceBtwInputFields),
               AddRecipeLevelSelector(),

              //------------------------------------------------ COOKING TIME  FIELD -----------------------------------------------

              const JGap(h: JmSize.spaceBtwInputFields),
               AddRecipeCookingTime(),

              //------------------------------------------------ NO. SERVES FIELD --------------------------------------------------

              const JGap(h: JmSize.spaceBtwInputFields),
               AddRecipeServes(),

              //-------------------------------------------------- Next Button ----------------------------------------------------

              const JGap(h: JmSize.spaceBtwSections),
              JMElevatedButton(
                text: JTexts.next,
                icon: Icons.arrow_forward_ios,
                onPressed: () {
                  Get.to(() => const ScnAddIngredients());
                },
              ),
            ],
          ),
        )),
      ),
    );
  }
}
