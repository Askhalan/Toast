// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:toast/common/web/styles/texts.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/paddings.dart';

class UsersListTile extends StatelessWidget {
  const UsersListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Flexible(
        flex: 1,
        child: Row(
          children: [
            Container(
                padding: JPad.itemGap,
                child: Text(
                  'Askhalan',
                  style: JTexts.wBody,
                )),
          ],
        ),
      ),
      Flexible(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: JPad.itemGap,
                  child: Text(
                    '402 ',
                    style: JTexts.wBody,
                  )),
            ],
          )),
      Flexible(
          flex: 1,
          child: Container(
              padding: JPad.itemGap,
              child: Center(
                child: Text(
                  '28',
                  style: JTexts.wBody,
                ),
              ))),
      Flexible(
          flex: 1,
          child: Container(
              padding: JPad.itemGap,
              child: Center(
                child: Text(
                  '31',
                  style: JTexts.wBody,
                ),
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
