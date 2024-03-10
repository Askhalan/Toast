// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:glass/glass.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';

class ScnDetailedRecipeView extends StatelessWidget {
  const ScnDetailedRecipeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                //------------------------------ RECIPE MAIN IMAGE ------------------------------
                Container(
                    width: double.infinity,
                    height: 280,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/images/TempFoodImages/pexels-valeria-boltneva-842571.jpg'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(JSize.borderRadXl),
                          bottomRight: Radius.circular(JSize.borderRadXl)),
                    )),

                //--------------------------------- USER DETAILS --------------------------------

                Positioned(
                  top: 30,left: 10,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0,2,9,2),
                    height: 36, 
                    // width: 150,
                      child: Row(
                        children: [
                          CircleAvatar(),
                          Text('userName',style: Theme.of(context).textTheme.bodyLarge!.apply(color: JColor.light),)
                        ],
                      ),
                  ).asGlass(
                     clipBorderRadius:BorderRadius.circular(30)
                  ),
                )
                //----------------------------- RECIPE BASIC DETAILS ----------------------------
              ],
            )
          ],
        ),
      ),
    );
  }
}
