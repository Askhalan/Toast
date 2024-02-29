import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/common/app/widgets/form%20elements/elevated_button.dart';
import 'package:toast/features/user/social/controller/add_ingredients_controller.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/constants/text_strings.dart';


class IngredientAddButton extends StatelessWidget {
  const IngredientAddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final AddIngredientsController controller = Get.find();
    return Flexible(
      child: JMElevatedButton(
        margin: const EdgeInsets.all(JmSize.spaceBtwInputFields),
        color: const Color.fromARGB(255, 255, 230, 189),
        neverChangeTextColor: true,
        text: JTexts.addIngredients,
        // icon: Icons.add,
        onPressed: () {controller.addItem();},
      ),
    );
  }
}
