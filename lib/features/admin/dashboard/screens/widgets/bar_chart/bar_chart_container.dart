// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/devices/responsive.dart';

import '../../../../../../common/web/styles/texts.dart';
import '../../../../../../utils/constants/paddings.dart';
import 'bar_graph.dart';

class BarchartPosts extends StatelessWidget {
  BarchartPosts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Initialize ordinalList in the constructor

    return Container(
      padding: JPad.containerPiChart,
      width: JFluid.percentWidth(context: context, percent: 73),
      height: JFluid.percentHeight(context: context, percent: 40),
      decoration: BoxDecoration(
        color: JColor.bg,
        borderRadius: BorderRadius.circular(JSize.borderRadLg),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Post Statistics',
            style: JTexts.piTitle,
          ),
          Divider(),
          BarGraph(),
        ],
      ),
    );
  }
}
