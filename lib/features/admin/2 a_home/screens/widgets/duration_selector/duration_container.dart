// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/devices/responsive.dart';

import 'duration_item.dart';

class DurationSelector extends StatelessWidget {
  const DurationSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      height: JFluid.percentHeight(context: context, percent: 5),
      width: JFluid.percentWidth(context: context, percent: 35),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Color.fromARGB(145, 192, 192, 192),
        borderRadius: BorderRadius.circular(JSize.borderRadMd)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        DurationItem(text: 'Today',selected: true,),
        DurationItem(text: 'Week',selected: false,),
        DurationItem(text: 'Month',selected: false,)
      ]),
    );
  }
}


