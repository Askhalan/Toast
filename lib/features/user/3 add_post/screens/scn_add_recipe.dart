import 'package:flutter/material.dart';
import 'package:toast/common/app/widgets/appbar/appbar.dart';

class AddRecipe extends StatelessWidget {
  const AddRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: JAppbar(title: Text('Add Recipe',style: Theme.of(context).textTheme.bodyLarge,)),
    );
  }
}