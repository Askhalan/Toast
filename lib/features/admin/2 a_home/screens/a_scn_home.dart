// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:toast/common/web/styles/texts.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/features/admin/2%20a_home/screens/widgets/bar_chart/bar_chart_container.dart';
import 'package:toast/features/admin/2%20a_home/screens/widgets/duration_selector/duration_container.dart';
import 'package:toast/features/admin/2%20a_home/screens/widgets/pi_chart/pichart_Container.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/paddings.dart';
import 'package:toast/utils/constants/sizes.dart';

class AScnHome extends StatelessWidget {
  const AScnHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        // color: const Color.fromARGB(255, 219, 219, 219),
                  padding: JPad.viewsInside,
                  width: double.infinity,
                  height: double.infinity,
                  child: ListView(
                    children: [
                      Text(
                        'Admin Dashboard',
                        style: JTexts.wSubtitle,
                      ),
                      Divider(color: JColor.icon),
                      DurationSelector(),
                      JGap(
                        h: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: JSize.webDefaultSpace),
                        child: Column(
                          children: [
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
                            JGap(
                          h: 60,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BarchartPosts(),
                          ],
                        ),
                          ],
                        ),
                      ),
                      
                    ],
                  ),
                );
   
  }
}