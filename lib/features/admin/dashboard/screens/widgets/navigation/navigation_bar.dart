// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:toast/common/web/styles/texts.dart';
import 'package:toast/common/web/widgets/button.dart';
import 'package:toast/common/web/widgets/logos/icon_logo.dart';
import 'package:toast/utils/constants/paddings.dart';

import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../common/web/widgets/gap.dart';
import 'navigation_item.dart';

class JNavigationBar extends StatelessWidget {
  JNavigationBar({super.key, required this.selection});
  final int selection;
  bool home = false;
  bool ingeridents = false;
  bool users = false;
  bool posts = false;

  @override
  Widget build(BuildContext context) {
    switch (selection) {
      case 1:
        {
          home = true;
        }
        break;
      case 2:
        {
          ingeridents = true;
        }
        break;
      case 3:
        {
          users = true;
        }
        break;
      case 4:
        {
          posts = true;
        }
        break;
    }
    return Flexible(
      flex: 2,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 300,
          minWidth: 200
        ),
        child: Column(
          children: [
            Flexible(
                flex: 5,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  padding: JPad.webContainerInside,
                  decoration: BoxDecoration(
                      color: JColor.bg,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(JSize.borderRadLg),
                          bottomRight: Radius.circular(JSize.borderRadLg))),
                  child: Column(
                    children: [
        // ---------------------------------------- Navigation Session ----------------------------------------
        
                      Flexible(
                        flex: 4,
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'TOAST',
                                style: JTexts.wTitle,
                              ),
                              JIconLogo(size: 30)
                            ],
                          ),
                          JGap(
                            h: 15,
                          ),
                          JNavigationItem(
                              icon: Icons.home_outlined,
                              pageName: 'Home',
                              selected: home),
                          JNavigationItem(
                              icon: Icons.grid_view,
                              pageName: 'Ingeridents',
                              selected: ingeridents),
                          JNavigationItem(
                              icon: Icons.people_outline,
                              pageName: 'Users',
                              selected: users),
                          JNavigationItem(
                              icon: Icons.local_post_office,
                              pageName: 'Posts',
                              selected: posts),
                        ]),
                      ),
        
        // ---------------------------------------- Admin Details Session ----------------------------------------
        
                      Flexible(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color:
                                          Color.fromARGB(167, 115, 115, 115)))),
                          width: double.infinity,
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CircleAvatar(),
                              Text(
                                'Askhalan',
                                style: JTexts.wSubtitle,
                              ),
                              Text(
                                'askkhalan.aj@gmail.com',
                                style: JTexts.wBody,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )),
        
        // ---------------------------------------- Logout Session ----------------------------------------
        
            Flexible(   
                flex: 1,
                child: Expanded(
                  child: Container(
                    // height: double.infinity,
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 38),
                    decoration: BoxDecoration(
                        color: JColor.bgSecondary,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(JSize.borderRadLg),
                            bottomRight: Radius.circular(JSize.borderRadLg))),
                    child: JButtonPrimary(text: 'Logout'),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
