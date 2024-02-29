import 'package:flutter/material.dart';

import '../../../../../../common/web/styles/texts.dart';
import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/sizes.dart';


class DurationItem extends StatelessWidget {
  const DurationItem({super.key, required this.text, required this.selected});
  final String text;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return Container(
          // padding: JPad.statBoxInside,
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
          height: double.infinity,
          decoration: BoxDecoration(
            color: selected == true? JColor.bg :  const Color.fromARGB(0, 255, 255, 255) ,
            borderRadius: BorderRadius.circular(JSize.borderRadSm),
          ),
          child: Text(text,style: selected == true? JTexts.selectedDuration : JTexts.nonSelectedDuration,),
        );
  }
}