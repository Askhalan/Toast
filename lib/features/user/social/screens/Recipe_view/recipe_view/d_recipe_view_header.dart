// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:glass/glass.dart';
import 'package:toast/features/user/social/screens/Recipe_view/recipe_view/widgets/w_highlight_details_item.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:unicons/unicons.dart';

class RecipeViewHeader extends StatelessWidget {
  const RecipeViewHeader({
    super.key, required this.image, required this.username, required this.time, required this.rating, required this.level, required this.serves,
  });
final String image;
final String username;
final String time;
final String rating;
final String level;
final String serves;





  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        //------------------------------ RECIPE MAIN IMAGE ------------------------------
        Container(
            width: double.infinity,
            height: 280,
            decoration:  BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      image),
                  fit: BoxFit.cover),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(JSize.borderRadXl),
                  bottomRight: Radius.circular(JSize.borderRadXl)),
            )),
    
        //--------------------------------- USER DETAILS --------------------------------
    
        Positioned(
          top: 30,
          left: 10,
          child: Container(
            padding: const EdgeInsets.fromLTRB(0, 2, 9, 2),
            height: 36,
            // width: 150,
            child: Row(
              children: [
                const CircleAvatar(),
                Text(
                  username,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .apply(color: JColor.light),
                )
              ],
            ),
          ).asGlass(clipBorderRadius: BorderRadius.circular(30)),
        ),
        //----------------------------- RECIPE HIGHLIGHT DETAILS ----------------------------
    
        Positioned(
          bottom: -40,
          left: 35,
          right: 35,
          child: Container(
            padding: const EdgeInsets.all(5),
            height: 80,
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //----------------------------- COOKING TIME ----------------------------
    
                HighlightDetailsItem(
                  icon: UniconsLine.stopwatch,
                  data: '$time MIN',
                ),
    
                //--------------------------------- RATING ------------------------------
    
                HighlightDetailsItem(
                  icon: UniconsLine.star,
                  data: '4.5',
                ),
    
                //--------------------------- DIFFICUILTY LEVEL -------------------------
    
                HighlightDetailsItem(
                  icon: UniconsLine.analytics,
                  data: level,
                ),
    
                //-------------------------------- CALORIE ------------------------------
    
                HighlightDetailsItem(
                  icon: UniconsLine.crockery,
                  data: '$serves Serves',
                )
              ],
            ),
          ).asGlass(
              clipBorderRadius:
                  BorderRadius.circular(JmSize.borderRadiusLg),
              tintColor: JColor.secondary),
        )
      ],
    );
  }
}