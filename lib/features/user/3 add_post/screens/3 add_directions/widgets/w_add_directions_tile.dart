import 'package:flutter/material.dart';
import 'package:toast/utils/constants/colors.dart';

import '../../../../../../common/app/widgets/decoration_items/custom_containers/constrained_container.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../utils/constants/text_strings.dart';


class AddDirectionsTile extends StatelessWidget {
  const AddDirectionsTile({
    super.key, required this.index,
  });
 final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(JmSize.spaceBtwInputFields),
        child: Row(children: [
           Container(
            margin: const EdgeInsets.only(right: JmSize.spaceBtwInputFields),
            height: 61,
            width: 61,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(JSize.borderRadLg),color: JColor.secondary),
            child: Center(child:  Text('$index',style:const TextStyle(fontWeight:FontWeight.bold,color: JColor.textPrimary) )),
          ),
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
         
        ]),
      );
  }
}