import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/common/app/widgets/form%20elements/elevated_button.dart';
import 'package:toast/common/app/widgets/form%20elements/outlined_button.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/features/user/grocesory/contollers/grocesory_controller.dart';
import 'package:toast/features/user/social/controller/post_controller.dart';
import 'package:toast/features/user/social/controller/post_view_controller.dart';
import 'package:toast/features/user/social/screens/Recipe_view/ingredients_view/w_ingredients_body_heading.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';


class ViewIngredientsBody extends StatelessWidget {
  ViewIngredientsBody({
    super.key,
    required this.allIngredients,
    required this.title,
  });

  final String title;
  final List allIngredients;
  final ViewPostController ingredientController = Get.find();
  final GrocesoryController grocesoryController = Get.find();
  final PostController postController = Get.find();

  @override
  Widget build(BuildContext context) {
    // final PostModel post = postController.currentPost.value ;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const JGap(h: JmSize.spaceBtwSections),

        //------------------------------------ INGREDIENTS BODY HEADING ---------------------------------

        IngredientsViewBodyHeading(allIngredients: allIngredients),

        //-------------------------------------- INGREDIENTS BODY LIST ----------------------------------

        GetBuilder<ViewPostController>(
          builder: (controller) {
            return ListView.separated(
              shrinkWrap: true,
              itemCount: allIngredients.length,
              separatorBuilder: (context, index) =>
                  const JGap(h: JmSize.defaultSpace),
              itemBuilder: (context, index) {
                final ingredient = allIngredients[index];
                return Container(
                  decoration: BoxDecoration(
                    color: controller.isSelected(ingredient)
                        ? JColor.secondary
                        : JColor.grey,
                    borderRadius: BorderRadius.circular(JmSize.borderRadiusLg),
                  ),
                  child: ListTile(
                    title: Text(ingredient),
                    onTap: () {
                      controller.toggleIngredient(ingredient);
                    },
                    trailing: Checkbox(
                      value: controller.isSelected(ingredient),
                      onChanged: (_) {
                        controller.toggleIngredient(ingredient);
                      },
                    ),
                  ),
                );
              },
            );
          },
        ),

        //------------------------------------ INGREDIENTS BODY BUTTONS ----------------------------------

        const JGap(h: JmSize.spaceBtwSections),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: JMOutlinedButton(
                icon: Icons.arrow_back_ios,
                onPressed: () {
                  Get.back();
                },
              ),
            ),
            const JGap(w: JmSize.spaceBtwInputFields),
            Flexible(
              flex: 4,
              child: JMElevatedButton(
                text: 'Save to Grocessory List',
                icon: Icons.arrow_forward_ios,
                onPressed: () {
                  grocesoryController.addToGrocesoryList(title);
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
