import 'package:flutter/material.dart';

class JTextFIeldContainer extends StatelessWidget {
  const JTextFIeldContainer({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(color: JColor.lightGrey,borderRadius: BorderRadius.circular(JSize.borderRadLg)),
      
      constraints: const BoxConstraints(
        minHeight: 50.0,
        maxHeight: 95.0,
      ),
      child: child,
    );
  }
}
 