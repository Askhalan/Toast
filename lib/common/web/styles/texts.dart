import 'package:flutter/material.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';

class JTexts {
  static const TextStyle styleWebTitleLg = TextStyle(
      fontSize: JSize.fontXl,
      fontWeight: FontWeight.bold,
      color: JColor.textPrimary);
  static const TextStyle styleError = TextStyle(
    fontSize: JSize.fontXl,
    fontWeight: FontWeight.bold,
    color: Colors.red,
  );
  static const TextStyle styleButtonText =
      TextStyle(fontSize: JSize.fontSm, color: JColor.textPrimary);

  static const TextStyle statValue = TextStyle(
      fontSize: JSize.fontXl,
      fontWeight: FontWeight.w900,
      color: JColor.textPrimary);

// ================================ WEB STYLES ================================

  static const TextStyle wTitle = TextStyle(
      fontSize: JSize.fontXl,
      fontWeight: FontWeight.w900,
      color: JColor.textPrimary);

  static const TextStyle wSubtitle = TextStyle(
      fontSize: JSize.fontMd,
      fontWeight: FontWeight.w600,
      color: JColor.textPrimary);

  static const TextStyle wBody = TextStyle(
      fontSize: JSize.fontSm,
      // fontWeight: FontWeight.w600,
      color: JColor.textPrimary);

  // ----------------------- Navigation Styles -----------------------

  static const TextStyle wNavItemSelected = TextStyle(
      fontSize: JSize.fontSm,
      fontWeight: FontWeight.w600,
      color: JColor.primary);

  static const TextStyle wNavItemNotSelected = TextStyle(
      fontSize: JSize.fontSm,
      // fontWeight: FontWeight.w600,
      color: JColor.icon);

  static const TextStyle wNavItem = TextStyle(
      fontSize: JSize.fontSm,
      fontWeight: FontWeight.w600,
      color: JColor.textPrimary);

  // ----------------------- Pi Chart Styles -----------------------

  static const TextStyle piTitle = TextStyle(
      fontSize: JSize.fontMd,
      // fontWeight: FontWeight.w600,
      color: JColor.textPrimary);

  static const TextStyle piValue = TextStyle(
      fontSize: JSize.fontXl,
      fontWeight: FontWeight.w900,
      color: JColor.textPrimary);

  static const TextStyle piPercentage = TextStyle(
      fontSize: JSize.fontXsm,
      fontWeight: FontWeight.w600,
      color: Color.fromARGB(255, 65, 65, 65));

  static const TextStyle piTag = TextStyle(
      fontSize: JSize.fontXsm,
      // fontWeight: FontWeight.w600,
      color: JColor.icon);

  // ----------------------- Dashboard Duration Styles -----------------------

  static const TextStyle selectedDuration = TextStyle(
      fontSize: JSize.fontXsm,
      color: JColor.primary);

      static const TextStyle nonSelectedDuration = TextStyle(
      fontSize: JSize.fontXsm,
      color: JColor.icon);
}

