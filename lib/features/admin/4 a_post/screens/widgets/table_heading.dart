// ============================== Custom Widget for List Item Heading ============================== 

import 'package:flutter/material.dart';
import 'package:toast/common/web/styles/texts.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/paddings.dart';
import '../../../../../utils/constants/sizes.dart';

class TableHeading extends StatelessWidget {
  const TableHeading({super.key, required this.tag,  this.flex=1});
  final String tag;
  final int flex;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: flex,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        padding: JPad.wideBox,
        decoration: BoxDecoration(
            color: JColor.bgSecondary,
            borderRadius: BorderRadius.circular(JSize.borderRadMd)),
        child: Center(child: Text(tag,style: JTexts.wBody,)),
      ),
    );
  }
}
