import 'package:flutter/material.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/helpers/helper_functions.dart';

class ElevatedTileContainer extends StatelessWidget {
  const ElevatedTileContainer({
    super.key,  this.height=80,  this.width = double.infinity,  this.radius = JmSize.borderRadiusLg, this.child, this.padding ,
  });
 final double height, width,radius;
 final EdgeInsetsGeometry? padding;
 final Widget? child;
  @override
  Widget build(BuildContext context) {
    final isDark = JHelperFunctions.isDarkMode(context);
    return Container(
      padding: padding,
      height: height,width:width ,
      decoration: BoxDecoration(
          color: isDark ?  JColor.darkerGrey: JColor.lightGrey,
          borderRadius:
              BorderRadius.circular(radius),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 30, 30, 30).withOpacity(0.15),
              offset: const Offset(4, 4),
              blurRadius: 13,
              spreadRadius: 2,
            ),
          ]),
          child: child,
    );
  }
}
