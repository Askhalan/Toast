import 'package:flutter/material.dart';
import 'package:glass/glass.dart';
import 'package:toast/utils/constants/sizes.dart';

class MainIngredientsGridTile extends StatelessWidget {
  const MainIngredientsGridTile({
    super.key,
    required this.ingredientName,
    this.onTap,
    required this.image,
  });
  final String ingredientName;
  final void Function()? onTap;
  final String image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(JmSize.defaultSpace / 3),
        decoration: BoxDecoration(
          color: Colors.amberAccent,
          borderRadius: BorderRadius.circular(JSize.borderRadLg),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              ingredientName,
              style: Theme.of(context).textTheme.bodyLarge,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ).asGlass(),
          ],
        ),
      ).asGlass(),
    );
  }
}
