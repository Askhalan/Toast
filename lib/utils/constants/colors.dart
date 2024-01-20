import 'package:flutter/material.dart';

class JColor {
  JColor._();

  // App Basic Colors
  static const Color primary = Color(0xffFFA22E);
  static const Color secondary = Color(0xFFFFE6BD);
  static const Color accent = Color(0xFF58332F);

  // Text Colors
  static const Color textPrimary = Color(0xFF000000);
  static const Color textSecondary = Color(0xFFFFE6BD);
  static const Color textaccent = Color(0xFFFFE6BD);


  // Background Colors
  static const Color bg = Color(0xFFFFFFFF);
  static const Color bgSecondary = Color.fromARGB(255, 242, 242, 242);


  // Border Colors
  static const Color borderPrimary = Color(0xFFE8ECF4);

  // Icon Color
  static const Color icon = Color(0xFF797979);
  static const Color iconAccent = Color(0xFFFFB660);
  // Button Colors

  // Error & validation Colors

  // Gradient Colors
  static const Gradient gradientBg =
      LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xffFFA22E), Color(0xFFFFE6BD)],
      );
}
