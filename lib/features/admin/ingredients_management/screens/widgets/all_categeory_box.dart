// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:toast/common/web/styles/texts.dart';
import 'package:toast/common/web/widgets/button.dart';
import 'package:toast/utils/constants/paddings.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/devices/responsive.dart';

class AllCategeoryBox extends StatelessWidget {
  const AllCategeoryBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: JFluid.percentHeight(context: context, percent: 66),
      width: JFluid.percentWidth(context: context, percent: 45),
      padding: JPad.statBoxInside,
      decoration: BoxDecoration(
          color: JColor.bg,
          borderRadius: BorderRadius.circular(JSize.borderRadLg)),
      child: Column(
        children: [

//------------------------------- Header For The Session ------------------------------- 

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('All Category'),
              Text(
                '258',
                style: JTexts.wBody,
              )
            ],
          ),
          Divider(),

//------------------------------- List Body Of The Session -------------------------------

          Expanded(
            child: SizedBox(
              child: ListView.builder(
                itemBuilder: (context, index) => CatTile(
                  name: 'Flour',
                  selected: true,
                ),
                itemCount: 20,
              ),
            ),
          ),

//---------------------------------------- Button ----------------------------------------

          Container(
            height: 30,
            margin: EdgeInsets.only(top: 8),
            child: JButtonPrimary(
              text: "Add Category",
            ),
          )
        ],
      ),
    );
  }
}


//------------------------ Custom Tile For Categeory List ------------------------

class CatTile extends StatelessWidget {
  const CatTile({super.key, required this.name, this.selected = false});
  final String name;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: JPad.statBoxInside,
      decoration: BoxDecoration(
          color: selected == true
              ? JColor.secondary
              : const Color.fromARGB(0, 255, 230, 189),
          borderRadius: BorderRadius.circular(JSize.borderRadMd)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: selected == true
                ? JTexts.selectedDuration
                : JTexts.nonSelectedDuration,
          ),
          Icon(
            Icons.delete_outline,
            color: JColor.icon,
            size: 15,
          )
        ],
      ),
    );
  }
}
