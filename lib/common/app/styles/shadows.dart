import 'package:flutter/material.dart';
import 'package:toast/utils/constants/colors.dart';

class JShadowStyle{

  static final verticalCardShadow = BoxShadow(
    color: JColor.darkerGrey.withOpacity(0.5),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 6)  );
}