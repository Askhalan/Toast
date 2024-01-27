import 'package:flutter/material.dart';

import '../../../../utils/constants/image_strings.dart';

class JLogoText extends StatelessWidget {
  const JLogoText({super.key, required this.size});
  final double size;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: size,
        width: size,
        child: Image.asset(
          JImages.logoText,
        ));
  }
}
