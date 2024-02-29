// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:toast/common/web/styles/texts.dart';
import 'package:toast/utils/constants/paddings.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/devices/responsive.dart';

class JStatsBox extends StatelessWidget {
  const JStatsBox({super.key, required this.title, required this.stats});
final String title;
final int stats;
  @override
  Widget build(BuildContext context) {
    return Container( 
      margin: EdgeInsets.all(10),
      padding: JPad.statBoxInside,
      width: JFluid.percentWidth(context: context, percent: 15),
      height: JFluid.percentHeight(context: context, percent: 15),
      decoration: BoxDecoration(
          color: JColor.bg,
          borderRadius: BorderRadius.circular(JSize.borderRadLg)),
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,style: JTexts.wBody,),
                Text('$stats',style: JTexts.statValue,)
              ],
            ),
          ),
    );
  }
}
