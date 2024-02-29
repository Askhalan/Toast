// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:toast/common/web/styles/texts.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/paddings.dart';

class ReportsListTile extends StatelessWidget {
  const ReportsListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Flexible(
        flex: 2,
        child: Container(
            padding: JPad.itemGap,
            child: Text(
              'Askhalan',
              style: JTexts.wBody,
            )),
      ),
      Flexible(
        flex: 3,
          child: Container(
              padding: JPad.itemGap,
              child: Row(
                children: [
                  Text(
                    'SOme random recioe post hello',
                    style: JTexts.wBody,
                  ),
                ],
              ))),
      Flexible(
        flex: 1,
          child: Container(
              padding: JPad.itemGap,
              child: Center(
                child: Icon(
                  Icons.more_horiz_rounded,
                  color: JColor.icon,
                ),
              ))),
    ]);
  }
}
 