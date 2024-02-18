import 'package:flutter/material.dart';
import 'package:glass/glass.dart';
import 'package:toast/utils/constants/sizes.dart';

class GrocesoryGridTile extends StatelessWidget {
  const GrocesoryGridTile({
    super.key,
    required this.listName,
    this.onTap, required this.image,
  });
  final String listName;
  final void Function()? onTap;
  final String image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.amberAccent,
            borderRadius: BorderRadius.circular(JSize.borderRadLg),
            image:  DecorationImage(
                image: AssetImage(image), fit: BoxFit.cover)),
        child: Center(
            child: Text(
          listName,
          style: Theme.of(context).textTheme.headlineSmall,
        )),
      ).asGlass(),
    );
  }
}
