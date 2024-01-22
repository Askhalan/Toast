import 'package:flutter/material.dart';

class JGap extends StatelessWidget {
  const JGap({super.key, this.h, this.w});

final h;
final w;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: h,
      width: w,
    );
  }
}