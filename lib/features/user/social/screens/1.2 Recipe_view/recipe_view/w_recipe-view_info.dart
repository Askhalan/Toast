
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class RecipeViewInfo extends StatelessWidget {
  const RecipeViewInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sandwich with boiled egg',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          ' Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore ',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}