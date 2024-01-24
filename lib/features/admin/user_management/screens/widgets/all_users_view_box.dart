// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:toast/utils/devices/responsive.dart';

import '../../../../../common/web/styles/texts.dart';
import '../../../../../common/web/widgets/button.dart';
import '../../../../../common/web/widgets/gap.dart';
import '../../../../../common/web/widgets/search_field.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/paddings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../post_management/screens/widgets/table_heading.dart';
import 'all_users_tile.dart';

class AllUsersBox extends StatelessWidget {
   AllUsersBox({super.key});

final TextEditingController searchUser = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: JPad.statBoxInside,
      margin: EdgeInsets.all(10),
      width: double.infinity,
      height: JFluid.percentHeight(context: context, percent: 90),
      decoration: BoxDecoration(
          color: JColor.bg,
          borderRadius: BorderRadius.circular(JSize.borderRadMd)),
      child: Column(
        children: [
    //------------------------------- Header For The Session -------------------------------
    
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Text('Reported Posts'),
                   JGap(
                w: 30,
              ),
                  Text(
                '258',
                style: JTexts.wBody,
              ),
                ],
              ),
             
              
              JSearchField(
                    textEditingController: searchUser,
                    hintText: 'Search',
                    errorText: '',
                    hidetext: false,
                    label: 'Search',
                    width: 400,height: 30,
                    )
            ],
          ),
          Divider(),
          Table(
            // columnWidths: {
            //   0: FlexColumnWidth(1), // User Name
            //   1: FlexColumnWidth(1), // Post Title (with more width)
            //   2: FlexColumnWidth(1), // Reports
            // },
            children: [
              TableRow(children: [
                TableCell(
                  child: TableHeading(
                    tag: 'Name',
                  ),
                ),
                TableCell(
                  child: TableHeading(
                    tag: 'Followers',
                  ),
                ),
                TableCell(
                  child: TableHeading(
                    tag: 'Followings',
                  ),
                ),
                TableCell(
                  child: TableHeading(
                    tag: 'Posts',
                  ),
                ),
                TableCell(
                  child: TableHeading(
                    tag: 'Reports',
                  ),
                ),
              ]),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => UsersListTile(),
              itemCount: 220,
              // physics: NeverScrollableScrollPhysics(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 30,
                width: 350,
                margin: EdgeInsets.only(top: 8),
                child: JButtonPrimary(
                  text: "Block User",
                ),
              ),
               Container(
                height: 30,
                width: 350,
                margin: EdgeInsets.only(top: 8),
                child: JButtonPrimary(
                  text: "Remove User",
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
