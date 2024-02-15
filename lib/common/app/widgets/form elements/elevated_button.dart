import 'package:flutter/material.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/helpers/helper_functions.dart';

class JMElevatedButton extends StatelessWidget {
  const JMElevatedButton(
      {super.key,
      required this.text,
      this.width = double.infinity,
      this.height = 50,
      this.onPressed, this.icon,  this.iconSize = 17, this.color= JColor.primary, this.margin,  this.neverChangeTextColor = false,});

  final String text;

  final double width;
  final double height;
  final IconData? icon ;
  final double iconSize;
  final VoidCallback? onPressed;
  final dynamic color;
  final EdgeInsetsGeometry? margin;
  final bool neverChangeTextColor;
  @override
  Widget build(BuildContext context) {
    final isDark = JHelperFunctions.isDarkMode(context);
    return Container(
      margin: margin,
      constraints: BoxConstraints(
        minHeight: height,
        maxHeight: height + 5,
      ),
      width: width,
      child: ElevatedButton(style: ButtonStyle(backgroundColor:MaterialStatePropertyAll(color)),
        onPressed: onPressed,
        child:  Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text, style: neverChangeTextColor ? const TextStyle(color: JColor.textPrimary) : Theme.of(context).textTheme.bodyLarge,),
            Icon(icon,size:iconSize , color: neverChangeTextColor ? JColor.textPrimary : isDark ? JColor.white: JColor.textPrimary ,)
          ],
        ),
      ),
    );
  }
}
