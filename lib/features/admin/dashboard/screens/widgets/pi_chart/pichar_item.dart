import 'package:flutter/material.dart';
import 'package:toast/common/web/styles/texts.dart';
import 'package:toast/common/web/widgets/gap.dart';
import '../../../../../../utils/constants/sizes.dart';

class PichartItem extends StatelessWidget {
  const PichartItem(
      {super.key,
      required this.percentage,
      required this.tag,
      required this.color});
  final int percentage;
  final String tag;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 12,
          height: 6,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(JSize.borderRadXsm)),
        ),
        const JGap(
          w: 4,
        ),
        Text(
          '$percentage%',
          style: JTexts.piPercentage,
        ),
        const JGap(
          w: 2,
        ),
        Text(tag, style: JTexts.piTag),
      ],
    );
  }
}
