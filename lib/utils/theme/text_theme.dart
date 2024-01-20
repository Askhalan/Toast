// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';

class JTextTheme{
  JTextTheme._();


// +++++++---------------------------- LIGHT THEME ----------------------------+++++++

  static TextTheme lightTextTheme =  TextTheme(

    // headlineLarge: TextStyle().copyWith(fontSize: JSize.fontLg, fontWeight: FontWeight.bold, color: JColor.textPrimary),
    // headlineMedium: TextStyle().copyWith(fontSize: JSize.fontMd,   color: JColor.textPrimary),
    // headlineSmall: TextStyle().copyWith(fontSize: JSize.fontSm,  color: JColor.textPrimary),


    titleLarge: TextStyle(),
    titleMedium: TextStyle(),
    titleSmall: TextStyle(),


    bodyLarge: TextStyle(),
    bodyMedium: TextStyle(),
    bodySmall: TextStyle(),


    labelLarge: TextStyle(),
    labelMedium: TextStyle(),
  );





// +++++++----------------------------- DARK THEME -----------------------------+++++++

  static TextTheme darkTextTheme =  TextTheme(
        
    // headlineLarge: TextStyle().copyWith(fontSize: JSize.fontLg, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 255, 255, 255)),
    // headlineMedium: TextStyle().copyWith(fontSize: JSize.fontMd,   color: const Color.fromARGB(255, 255, 255, 255)),
    // headlineSmall: TextStyle().copyWith(fontSize: JSize.fontSm,  color: const Color.fromARGB(255, 255, 255, 255)),


    titleLarge: TextStyle(),
    titleMedium: TextStyle(),
    titleSmall: TextStyle(),


    bodyLarge: TextStyle(),
    bodyMedium: TextStyle(),
    bodySmall: TextStyle(),


    labelLarge: TextStyle(),
    labelMedium: TextStyle(),
  );


}