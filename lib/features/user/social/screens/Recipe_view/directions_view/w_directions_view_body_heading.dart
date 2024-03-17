import 'package:flutter/material.dart';
import 'package:toast/common/app/widgets/texts/section_heading.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';

class ViewDirectionsBodyHeading extends StatelessWidget {
  const ViewDirectionsBodyHeading({
    super.key, required this.totalSteps,
  });
 final int totalSteps;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const JSectionHeading(
          heading: 'Directions',
          isFixedColor: false,
        ),
        Container(
          height: 25,
          width: 80,
          decoration: BoxDecoration(
              color: JColor.secondary,
              borderRadius:
                  BorderRadius.circular(JSize.borderRadMd)),
          child:  Center(child:  Text('$totalSteps Steps')),
        )
      ],
    );
  }
}