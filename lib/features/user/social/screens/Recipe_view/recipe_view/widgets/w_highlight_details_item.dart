import 'package:flutter/material.dart';

class HighlightDetailsItem extends StatelessWidget {
  const HighlightDetailsItem({
    super.key, this.icon, this.data='', this.size=30,
  });

final IconData? icon;
final String data;
final double? size;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(icon,size: size,),
        Text(data,style: Theme.of(context).textTheme.bodyLarge,)
      ],
    );
  }
}
