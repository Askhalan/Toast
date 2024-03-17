import 'package:flutter/material.dart';
import 'package:glass/glass.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:unicons/unicons.dart';

class RatingChip extends StatelessWidget {
  const RatingChip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      left: 10,
      child: SizedBox(
        height: 25,
        width: 55,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              UniconsLine.star,
              color: JColor.light,
              size: 18,
            ),
            Text(
              '5.0',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(color: JColor.light),
            )
          ],
        ),
      ).asGlass(
          clipBorderRadius: BorderRadius.circular(JmSize.borderRadiusSm)),
    );
  }
}