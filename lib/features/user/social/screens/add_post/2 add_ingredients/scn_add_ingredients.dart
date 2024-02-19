// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:toast/common/app/widgets/appbar/appbar.dart';
import 'package:toast/common/app/widgets/appbar/appbar_widgets/w_page_indicator.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/constants/text_strings.dart';
import 'widgets/w_ingredients_form.dart';
import 'widgets/w_ingredients_processing_btn.dart';


class ScnAddIngredients extends StatelessWidget {
  const ScnAddIngredients({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: JAppbar(
        title: Text(
          JTexts.addIngredients,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: const [
          PageIndicatorWithTotal(
            pageNo: '2',
            totalPageNo: '4',
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(JmSize.defaultSpace - 7),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //---------------------------------------------- INGREDIENT ADD FORM -----------------------------------------------

            AddIngredientForm(),

            //-------------------------------------------------- NAVIGATING BUTTON ---------------------------------------------------

            const JGap(h: JmSize.spaceBtwSections),
            IngredientsProcessingButtons(),
          ],
        ),
      ),
    );
  }
}






