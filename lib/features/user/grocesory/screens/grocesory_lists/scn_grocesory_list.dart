// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/common/app/widgets/appbar/appbar.dart';
import 'package:toast/features/user/grocesory/contollers/grocesory_controller.dart';
import 'package:toast/features/user/grocesory/models/grocesoryModel.dart';
import 'package:toast/utils/constants/text_strings.dart';
import 'package:toast/utils/devices/responsive.dart';

import '../../../../../common/app/widgets/form elements/elevated_button.dart';
import '../../../../../utils/constants/sizes.dart';
import 'w_grocesory_list_tile.dart';

class ScnGrocesoryList extends StatelessWidget {
   ScnGrocesoryList({super.key, required this.grocesory, });

final GrocesoryController grocesoryController = Get.find();
 final GrocesoryModel grocesory;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: JAppbar(
        title: Text(
          JTexts.grocesoryList,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(JmSize.defaultSpace - 7),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //-------------------------------------------------- ITEMS LISTS ----------------------------------------------------

              SizedBox(
                height: JFluid.percentHeight(context: context, percent: 81.5),
                child: ListView.builder(
                  itemCount: grocesory.ingredients.length,
                  itemBuilder: (BuildContext context, int index) {

                    return GrocesoryListTile(ingredient: grocesory.ingredients[index],);
                  },
                ),
              ),

              //------------------------------------------------ ADD ITEM BUTTON --------------------------------------------------

              JMElevatedButton(
                text: JTexts.addItem,
                icon: Icons.add,
                onPressed: () {
                   grocesoryController.addNewGrocesoryItem(grocesory);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
