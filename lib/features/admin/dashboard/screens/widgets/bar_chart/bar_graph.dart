// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';
import 'package:toast/utils/constants/colors.dart';

class BarGraph extends StatelessWidget {
  BarGraph({Key? key}) : super(key: key) {
    ordinalList = [
      OrdinalData(domain: 'Jan', measure: 3),
      OrdinalData(domain: 'Feb', measure: 5),
      OrdinalData(domain: 'Mar', measure: 9),
      OrdinalData(domain: 'Apr', measure: 6.5),
      OrdinalData(domain: 'May', measure: 8),
      OrdinalData(domain: 'Jun', measure: 4),
      OrdinalData(domain: 'Jul', measure: 7),
      OrdinalData(domain: 'Aug', measure: 2),
      OrdinalData(domain: 'Sep', measure: 10),
      OrdinalData(domain: 'Oct', measure: 5),
      OrdinalData(domain: 'Nov', measure: 6),
      OrdinalData(domain: 'Dec', measure: 8.5),
    ];
    ordinalGroup = [
      OrdinalGroup(
        id: '1',
        data: ordinalList,
      ),
    ];
  }

  late List<OrdinalData> ordinalList;
  late List<OrdinalGroup> ordinalGroup;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 4,
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: DChartBarO(
          animate: true,
          configRenderBar: ConfigRenderBar(
            radius: 6,
            maxBarWidthPx: 20,
          ),
          groupList: ordinalGroup,
          measureAxis: MeasureAxis(
              desiredTickCount: 4,
              desiredMaxTickCount: 4,
              labelAnchor: LabelAnchor.centered),
          fillColor: (group, ordinalData, index) => JColor.piPrimary,
        ),
      ),
    );
  }
}
