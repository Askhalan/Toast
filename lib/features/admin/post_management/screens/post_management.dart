// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:toast/common/web/styles/texts.dart';
import 'package:toast/common/web/widgets/stats_box.dart';
import 'package:toast/features/admin/dashboard/screens/widgets/navigation/navigation_bar.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/paddings.dart';

import '../../../../common/web/widgets/gap.dart';
import '../../dashboard/screens/widgets/bar_chart/bar_chart_container.dart';
import 'widgets/reported_posts_container.dart';

class PostManagement extends StatelessWidget {
  const PostManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(gradient: JColor.gradientBg),
        child: Row(
          children: [

            
            JNavigationBar(selection: 4), //<------------ Navigation Bar
            
            Flexible(
              flex: 7,
              child: Container(
                padding: JPad.webContainerInside,
                decoration: BoxDecoration(),
                child: Column(
                  children: [
//--------------------------------------- Page Header ---------------------------------------

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Posts Management',
                        style: JTexts.wSubtitle,
                      ),
                    ),
                    Divider(color: JColor.icon),

//--------------------------------------- Page Body ---------------------------------------

                    Expanded(
                      child: ListView(
                        children: [
                          JGap(
                            h: 20,
                          ),
                          //---------------------------------- Post Statistics Graph ----------------------------------

                          BarchartPosts(), //<------------  Imported From Admin Dashboard Page (Already created over there)

                          JGap(
                            h: 10,
                          ),

                          //--------------------------------------- Post Counts ---------------------------------------

                          Row(
                            children: [
                              JStatsBox(title: 'Reported Post', stats: 5),
                              JStatsBox(title: 'Review Reports', stats: 0),
                            ],
                          ),

                          //---------------------------------- Post Management Session ----------------------------------

                          ReportedPostBox(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
