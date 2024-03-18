// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:toast/common/app/widgets/decoration_items/custom_containers/constrained_container.dart';
import 'package:toast/features/user/social/controller/add_ingredients_controller.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/constants/text_strings.dart';
import 'package:toast/utils/validators/validation.dart';
import 'package:unicons/unicons.dart';

class AddIngredientTile extends StatelessWidget {
  const AddIngredientTile({
    super.key, required this.index, required this.textEditingController,
  });
  final int index;
  final TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {
    final AddIngredientsController controller = Get.find();
    return Slidable(
      startActionPane: ActionPane(motion: ScrollMotion(), children: [
        SlidableAction(
                    onPressed: (_){controller.removeItem(index);},
                    backgroundColor: Color(0xFFFE4A49),
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'Delete',
                  ),
      ]),

      child: Container(
        margin: const EdgeInsets.all(JmSize.spaceBtwInputFields),
        child: Row(
          children: [
            Expanded(
              child: JTextFIeldContainer(
                child: TextFormField(
                  validator: (value) =>
                      JValidator.validateEmptyText('Ingredients', value),
                  controller: textEditingController,
                  decoration: const InputDecoration(
                    labelText: JTexts.ingredient,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: JmSize.spaceBtwInputFields),
              height: 61,
              width: 61,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(JSize.borderRadLg),
                image: const DecorationImage(
                  image: AssetImage('assets/images/defaultImage.webp'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Color.fromARGB(166, 190, 190, 190),
                    BlendMode.darken,
                  ),
                ),
              ),
              child: const Icon(UniconsLine.image_plus),
            ),
          ],
        ),
      ),
    );
  }
}
