// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:toast/common/web/styles/texts.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/devices/responsive.dart';

class JNavigationItem extends StatelessWidget {
  const JNavigationItem({super.key, required this.icon, required this.pageName, this.onTap, required this.selected});

  final IconData icon;
  final String pageName;
  final onTap;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onTap;
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.all(3),
        constraints: BoxConstraints(
          minHeight: 40,
          maxHeight: 50
        ),
        width: double.infinity,
        // height: JFluid.percentHeight(context: context, percent: 5),
        decoration: BoxDecoration(
            color: selected==true ? JColor.secondary: Color.fromARGB(0, 255, 255, 255),
            borderRadius: BorderRadius.circular(JSize.borderRadMd)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: JFluid.percentWidth(context: context, percent: 1),
            ),
            Icon(
              icon,
              color: selected == true ? JColor.primary : JColor.icon,
            ),
            SizedBox(
              width: JFluid.percentWidth(context: context, percent: 1),
            ),
            Text(
              pageName,
              style: selected == true?  JTexts.wNavItemSelected : JTexts.wNavItemNotSelected ,
            )
          ],
        ),
      ),
    );
  }
}
