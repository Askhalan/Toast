// ignore_for_file: invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/features/user/grocesory/contollers/grocesory_controller.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/devices/responsive.dart';
import '../grocesory_lists/scn_grocesory_list.dart';
import 'w_grocesory_grid_tile.dart';

class GrocesoryBody extends StatelessWidget {
  GrocesoryBody({
    super.key,
    this.scrollController,
  });
  final GrocesoryController grocesoryController = Get.find();
  final ScrollController? scrollController;


  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: JmSize.defaultSpace - 7),
        child: Obx(()=>
           SizedBox(
            height: JFluid.percentHeight(context: context, percent: 90),
            width: double.infinity,
            child: grocesoryController.allGrocesory.value.isEmpty
                ? Center(
                    child: Text(
                    'Add some list to show here',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ))
                :    
                GridView.builder(
                    controller: scrollController,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 13,
                        mainAxisSpacing: 13),
                    itemCount: grocesoryController.allGrocesory.length,
                    itemBuilder: (BuildContext context, int index) {
                      
                      return GrocesoryGridTile(
                        image: JImages.defaultImage,
                        listName:grocesoryController.allGrocesory[index].listName,
                        id: grocesoryController.allGrocesory[index].id,
                        onTap: () {
                          Get.to(() => ScnGrocesoryList(
                                grocesory: grocesoryController.allGrocesory[index],
                              ));
                        },
                      );
                    }),
          ),
        )
        
        );
  }
}
