// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:toast/common/web/styles/texts.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/utils/constants/paddings.dart';

import '../../../../../common/web/widgets/button.dart';
import '../../../../../common/web/widgets/search_field.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/devices/responsive.dart';

class ChoosedCategeoryBox extends StatelessWidget {
  ChoosedCategeoryBox({super.key});

  final TextEditingController searchElement = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: JPad.statBoxInside,
      height: JFluid.percentHeight(context: context, percent: 66),
      width: JFluid.percentWidth(context: context, percent: 50),
      decoration: BoxDecoration(
          color: JColor.bg,
          borderRadius: BorderRadius.circular(JSize.borderRadLg)),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,

//------------------------------- Header For The Session -------------------------------

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('All Category'),
                Text(
                  '258',
                  style: JTexts.wBody,
                ),
                JSearchField(
                    textEditingController: searchElement,
                    hintText: 'Search',
                    errorText: '',
                    hidetext: false,
                    label: 'Search',
                    width: 300,height: 30,
                    )
              ],
            ),
          ),
          Divider(),

//-----------------------------------  List Body  -----------------------------------

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TitleContaner(
                tag: '        Name        ',
              ),
              TitleContaner(
                tag: 'Unit',
              ),
              TitleContaner(
                tag: 'Action',
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) =>
                  SelectedCatTile(itemName: 'Maida', unit: 'Kg'),
              itemCount: 30,
            ),
          ),

//-----------------------------------   Button  -----------------------------------

          Container(
            height: 30,
            margin: EdgeInsets.only(top: 8),
            child: JButtonPrimary(
              text: "Add Ingredients",
            ),
          )
        ],
      ),
    );
  }
}



// ============================== Custom Widget for List Item Heading ============================== 

class TitleContaner extends StatelessWidget {
  const TitleContaner({super.key, required this.tag});
  final String tag;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 5,
      child: Container(
        padding: JPad.wideBox,
        decoration: BoxDecoration(
            color: JColor.bgSecondary,
            borderRadius: BorderRadius.circular(JSize.borderRadMd)),
        child: Text(tag),
      ),
    );
  }
}




// ============================== Custom Widget for List Item ==============================

class SelectedCatTile extends StatelessWidget {
  const SelectedCatTile(
      {super.key, required this.itemName, required this.unit});
  final String itemName;
  final String unit;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: JPad.itemGap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(itemName),
          Text(unit),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.delete_outline,
                color: JColor.icon,
                size: 15,
              ),
              JGap(
                w: 20,
              ),
              Icon(
                Icons.edit_note_outlined,
                color: JColor.icon,
                size: 15,
              )
            ],
          ),
        ],
      ),
    );
  }
}
