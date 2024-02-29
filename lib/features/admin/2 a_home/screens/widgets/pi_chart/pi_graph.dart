// ignore_for_file: must_be_immutable

import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';
import 'package:toast/utils/constants/colors.dart';

class PiGraph extends StatelessWidget {
  PiGraph({super.key});

  List<OrdinalData> ordinalDataList = [
    OrdinalData(domain: 'New', measure: 6.2, color:JColor.piPrimary),
    OrdinalData(domain: 'Active', measure: 1.3, color:JColor.piSecondary),
    OrdinalData(domain: 'Inactive', measure: 2.3, color: JColor.piTertiary),
  ];

  @override
  Widget build(BuildContext context) {
    return DChartPieO(
      animate: true,
      // animationDuration: const Duration(milliseconds: 100),
      data: ordinalDataList,
      configRenderPie:  const ConfigRenderPie(
      
        arcWidth: 20,
      ),
    );
  }
}
