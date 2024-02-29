// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:toast/common/web/styles/texts.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/common/web/widgets/stats_box.dart';
// import 'package:toast/features/admin/1-navigation/navigation_bar.dart';
import 'package:toast/utils/constants/colors.dart';

import '../../../../utils/constants/paddings.dart';
import 'widgets/all_categeory_box.dart';
import 'widgets/chosed_categeory_bx.dart';

class AScnIngredients extends StatelessWidget {
  const AScnIngredients({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: JColor.gradientBg
        ),
        child: Row(
          children: [

            // JNavigationBar(),  //<---------  Navigation Bar 
            
            Flexible(
              flex: 7,
              child: Container(
                padding: JPad.viewsInside,
                decoration: BoxDecoration(
                  // color: Color.fromARGB(255, 255, 170, 170)
                ),
                child: Column(
                  children: [

//---------------------------------- Page Header ----------------------------------
                    
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text('Ingrediants Dashboard',style: JTexts.wSubtitle,),
                    ),
                    Divider(color: JColor.icon),
                    JGap(h: 20,),
                    
//---------------------------------- Statistics Boxes ----------------------------------                     
                    
                    Row(
                      children: [
                        JStatsBox(title: 'Total Ingrediants', stats: 500),
                        JStatsBox(title: 'Categories', stats: 50),
                        JStatsBox(title: 'Images', stats: 100),
                      ],
                    ),
                    JGap(h: 20,),
                    
 //---------------------------------- Main Row (Categeory) ----------------------------------
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [

                        Flexible(
                          flex: 2,
                          child: AllCategeoryBox()
                        ),

                        Flexible(
                          flex: 5,
                          child: ChoosedCategeoryBox()
                        )

                      ],
                    )

                  ],
                ),
              ),
            )
          ],
        ),
    );
  }
} 