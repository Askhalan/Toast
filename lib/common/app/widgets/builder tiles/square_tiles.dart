import 'package:flutter/material.dart';
import 'package:glass/glass.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class JSquareItemTile extends StatelessWidget {
  const JSquareItemTile({
    super.key,
    this.title = '',
    this.image = '',
    this.onTap,
  });
  final String title;
  final String image;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AspectRatio(
        aspectRatio: 1.1 / 1,
        child: Container(
            margin: const EdgeInsets.only(right: JmSize.spaceBtwItems),
            padding: const EdgeInsets.all(JmSize.sm),
            decoration: BoxDecoration(
                color: JColor.light,
                borderRadius: BorderRadius.circular(JSize.borderRadLg),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
            child: Center(
                child: Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ).asGlass())),
      ),
    );
  }
}
