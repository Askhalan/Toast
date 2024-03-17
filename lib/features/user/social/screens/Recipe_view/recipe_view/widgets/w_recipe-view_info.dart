
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class RecipeViewInfo extends StatelessWidget {
  const RecipeViewInfo({
    super.key, required this.title, required this.description,
  });
final String title;
final String description;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          description,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}