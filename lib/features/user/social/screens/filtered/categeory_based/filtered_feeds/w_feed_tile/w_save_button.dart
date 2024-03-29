import 'package:flutter/material.dart';
import 'package:glass/glass.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:unicons/unicons.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      right: 10,
      child: const SizedBox(
        height: 25,
        width: 25,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              UniconsLine.bookmark,
              color: JColor.light,
              size: 18,
            ),
          ],
        ),
      ).asGlass(
          clipBorderRadius: BorderRadius.circular(JmSize.borderRadiusSm)),
    );
  }
}