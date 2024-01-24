// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../../../common/web/styles/texts.dart';
import '../../../../../common/web/widgets/gap.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/paddings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../ingredients_management/screens/widgets/table_row_item.dart';
import 'table_heading.dart';

class ReportedPostBox extends StatelessWidget {
  const ReportedPostBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: JPad.statBoxInside,
      margin: EdgeInsets.all(10),
      width: double.infinity,
      height: 700,
      decoration: BoxDecoration(
          color: JColor.bg,
          borderRadius: BorderRadius.circular(JSize.borderRadMd)),
      child: Column(
        children: [
//------------------------------- Header For The Session -------------------------------

          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Reported Posts'),
              JGap(
                w: 30,
              ),
              Text(
                '258',
                style: JTexts.wBody,
              )
            ],
          ),
          Divider(),
          Table(
            columnWidths: {
              0: FlexColumnWidth(1), // User Name
              1: FlexColumnWidth(3), // Post Title (with more width)
              2: FlexColumnWidth(1), // Reports
            },
            children: [
              TableRow(children: [
                TableCell(
                  child: TableHeading(
                    tag: 'Name',
                  ),
                ),
                TableCell(
                  child: TableHeading(
                    tag: 'Post Title',
                  ),
                ),
                TableCell(
                  child: TableHeading(
                    tag: 'Report',
                  ),
                ),
              ]),
            ],
          ),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) => ReportsListTile(),
            itemCount: 20,
            physics: NeverScrollableScrollPhysics(),
            ),
          )
        ],
      ),
    );
  }
}
