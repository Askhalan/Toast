// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:toast/features/admin/dashboard/screens/widgets/navigation/navigation_bar.dart';
import 'package:toast/utils/constants/colors.dart';

import '../../../../common/web/styles/texts.dart';
import '../../../../common/web/widgets/gap.dart';
import '../../../../common/web/widgets/stats_box.dart';
import '../../../../utils/constants/paddings.dart';
import 'widgets/all_users_view_box.dart';

class UserManagement extends StatelessWidget {
  const UserManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(gradient: JColor.gradientBg),
        child: Row(
          children: [
            JNavigationBar(selection: 3), //<------------ Navigation Bar
            Flexible(
                flex: 7,
                child: Container(
                  padding: JPad.webContainerInsideScrollable,
                  decoration: BoxDecoration(),
                  child: Column(children: [
//--------------------------------------- Page Header ---------------------------------------

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'User Management',
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
                          
                          //--------------------------------------- User Statistics Counts ---------------------------------------

                          Row(
                            children: [
                              JStatsBox(title: 'Blocked Users', stats: 0),
                              JStatsBox(title: 'Reports', stats: 150),
                              JStatsBox(title: 'Warned Users', stats: 100),
                              JStatsBox(title: 'Actions', stats: 15),
                            ],
                          ),

                          //---------------------------------- User Management Session ----------------------------------

                           AllUsersBox
(),

                        ],
                      ),
                    ),
                  ]),
                ))
          ],
        ),
      ),
    );
  }
}
