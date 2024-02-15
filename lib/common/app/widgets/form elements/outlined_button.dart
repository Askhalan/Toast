import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';

class JMOutlinedButton extends StatelessWidget {
  const JMOutlinedButton(
      {super.key,
       this.text='',
      this.width = double.infinity,
      this.height = 50,
      this.neverChangeTextColor = false,
      this.onPressed,  this.iconSize = 17, this.icon});

  final String text;
  final double width;
  final double height;
  final VoidCallback? onPressed;
  final bool neverChangeTextColor;
  final double iconSize;
  final IconData? icon ;

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      constraints: BoxConstraints(
        minHeight: height,
        maxHeight: height + 5,
      ),
      width: width,
      child: OutlinedButton(
        onPressed: onPressed,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text, style: neverChangeTextColor ? const TextStyle(color: JColor.textPrimary) : Theme.of(context).textTheme.bodyLarge,),
            Icon(icon,size:iconSize , color: neverChangeTextColor ? JColor.textPrimary : null ,)
          ],
        ),
      ),
    );
  }
}
