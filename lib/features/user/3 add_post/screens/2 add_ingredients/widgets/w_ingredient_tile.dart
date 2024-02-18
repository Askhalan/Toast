import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import '../../../../../../common/app/widgets/decoration_items/custom_containers/constrained_container.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../utils/constants/text_strings.dart';

class AddIngredientTile extends StatelessWidget {
  const AddIngredientTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(JmSize.spaceBtwInputFields),
        child: Row(children: [
          Flexible(
            child: Flexible(
              child: JTextFIeldContainer(
                child: TextFormField(
                  // validator: (value) =>
                  //     JValidator.validateEmptyText('Title', value),
                  // controller: controller.username,
                  decoration: const InputDecoration(
                      labelText: JTexts.ingredient),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: JmSize.spaceBtwInputFields),
            height: 61,
            width: 61,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(JSize.borderRadLg),
                image: const DecorationImage(
                    image:
                        AssetImage('assets/images/defaultImage.webp'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Color.fromARGB(166, 190, 190, 190),
                        BlendMode.darken))),
            child: const Icon(UniconsLine.image_plus),
          )
        ]),
      );
  }
}