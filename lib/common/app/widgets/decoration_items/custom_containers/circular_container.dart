import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';

class JCircularContainer extends StatelessWidget {
   const JCircularContainer({
    super.key,
     this.width = 400,
     this.height = 400,
    this.color = JColor.white, 
    this.padding,
  });
  final double width;
  final double height;

  final dynamic color;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(height),
          color: color),
    );
  }
}


 