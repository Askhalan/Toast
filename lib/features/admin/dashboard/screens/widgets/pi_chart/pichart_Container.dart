// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:toast/common/web/styles/texts.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/paddings.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/devices/responsive.dart';

import 'pi_graph.dart';
import 'pichar_item.dart';

class PiChart extends StatelessWidget {
  const PiChart({super.key, required this.title, required this.total, required this.tag_1, required this.tag_2, required this.tag_3, required this.value_1, required this.value_2, required this.value_3});
  
  final String title;
  final String total;
  final String tag_1;
  final String tag_2;
  final String tag_3;
  final int value_1;
  final int value_2;
  final int value_3;

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(15),
      padding: JPad.containerPiChart,
      height: JFluid.percentHeight(context: context, percent: 22),
      width: JFluid.percentWidth(context: context, percent: 23),
      decoration: BoxDecoration(
          color: JColor.bg,
          borderRadius: BorderRadius.circular(JSize.borderRadLg)),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: SizedBox(
              width: double.infinity,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text(
                          title,
                          style: JTexts.piTitle,
                        ),
                        Text(total, style: JTexts.piValue),
                      ],
                    ),
                    Column(
                      children: [
                        PichartItem(
                            percentage: value_1,
                            tag: tag_1,
                            color: JColor.piPrimary),
                        PichartItem(
                            percentage: value_2,
                            tag: tag_2,
                            color: JColor.piSecondary),
                        PichartItem(
                            percentage: value_3,
                            tag: tag_3,
                            color: JColor.piTertiary),
                      ],
                    ),
                  ]),
            ),
          ),
          Flexible(
            flex: 1,
            child: PiGraph( ),
          ),
        ],
      ),
    );
  }
}
