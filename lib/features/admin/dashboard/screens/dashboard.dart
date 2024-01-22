// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:toast/common/web/styles/texts.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/features/admin/dashboard/screens/widgets/navigation/navigation_bar.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/paddings.dart';

import 'widgets/bar_chart/bar_chart_container.dart';
import 'widgets/duration_selector/duration_container.dart';
import 'widgets/pi_chart/pichart_Container.dart';

class Dashoard extends StatelessWidget {
  const Dashoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(gradient: JColor.gradientBg),
        child: Row(
          children: [
            JNavigationBar(selection: 1),
            Flexible(
              flex: 7,
              child: Container(
                padding: JPad.viewsInside,
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text('Admin Dashboard',style: JTexts.wSubtitle,),
                    ),
                    Divider(color: JColor.icon),
                    
                    DurationSelector(),
                    JGap(h: 50,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        PiChart(
                          title: 'Users',
                          total: '234',
                          tag_1: 'New',
                          value_1: 62,
                          tag_2: 'Active Users',
                          value_2: 13,
                          tag_3: 'Inactive',
                          value_3: 23,
                        ),
                        PiChart(
                          title: 'Posts',
                          total: '2399',
                          tag_1: 'New',
                          value_1: 62,
                          tag_2: 'Trending    ',
                          value_2: 13,
                          tag_3: 'Inactive',
                          value_3: 23,
                        ),
                        PiChart(
                          title: 'Trafiic',
                          total: '2399',
                          tag_1: 'New',
                          value_1: 62,
                          tag_2: 'Active Users',
                          value_2: 13,
                          tag_3: 'Inactive',
                          value_3: 23,
                        ),
                      ],
                    ),
                    JGap(h: 60,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BarchartPosts(),
                      ],
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
