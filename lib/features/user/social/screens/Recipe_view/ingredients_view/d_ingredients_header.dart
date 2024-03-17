import 'package:flutter/material.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';

class ViewIngredientsHeader extends StatelessWidget {
  const ViewIngredientsHeader({
    super.key,
    required this.image,
    required this.title,
  });

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 15),
          width: double.infinity,
          height: 220,
          decoration: BoxDecoration(
            color: JColor.accent,
            image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.cover,
            ),
            borderRadius:
                BorderRadius.circular(JmSize.borderRadiusLg),
          ),
        ),
        const JGap(
          h: JmSize.defaultSpace,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ],
    );
  }
}
