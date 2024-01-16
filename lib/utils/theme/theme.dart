import 'package:flutter/material.dart';
import 'package:toast/utils/theme/text_theme.dart';

class JAppTheme {
  JAppTheme._();

// +++++++---------------------------- LIGHT THEME ----------------------------+++++++

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.amber,
    textTheme: JTextTheme.lightTextTheme,
  );


// +++++++----------------------------- DARK THEME -----------------------------+++++++
  
  static ThemeData darkTheme = ThemeData(
     useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.amber,
    textTheme: JTextTheme.darkTextTheme,
  );

}