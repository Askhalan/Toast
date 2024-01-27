import 'package:flutter/material.dart';

class JMElevatedButton extends StatelessWidget {
  const JMElevatedButton(
      {super.key,
      required this.text,
      this.width = double.infinity,
      this.height = 50,
      this.onPressed});

  final String text;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: height,
        maxHeight: height + 5,
      ),
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        child:  Text(text),
      ),
    );
  }
}
