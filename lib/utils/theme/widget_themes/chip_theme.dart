import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class JChipTheme {
  JChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: JColor.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: JColor.black),
    selectedColor: JColor.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: JColor.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: JColor.darkerGrey,
    labelStyle: TextStyle(color: JColor.white),
    selectedColor: JColor.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: JColor.white,
  );
}
