// ignore_for_file: unused_import

import 'package:flutter/material.dart';
// import 'package:toast/common/web/styles/texts.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';

import '../../../features/admin/login/contollers/auth_controller.dart';

class JButtonPrimary extends StatelessWidget {
  const JButtonPrimary(
      {super.key, required this.text, this.icon, this.onPressed});

  final String text;
  final icon;
  final onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minWidth: 100.0, // Set your minimum width
        maxWidth: 400.0, // Set your maximum width
        minHeight: 43.0, // Set your minimum height
        maxHeight: 55.0, // Set your maximum height
      ),
      child: ElevatedButton(
        onPressed:onPressed,
        style: ElevatedButton.styleFrom(
            // elevation:
            backgroundColor: JColor.primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(JSize.borderRadSm)),
            textStyle: const TextStyle(
                fontSize: JSize.fontSm, color: JColor.textPrimary)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(text),],
        ),
      ),
    );
  }
}
