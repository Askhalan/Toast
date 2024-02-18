import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/devices/responsive.dart';
import '../grocesory_lists/scn_grocesory_list.dart';
import 'w_grocesory_grid_tile.dart';

class GrocesoryBody extends StatelessWidget {
  const GrocesoryBody({
    super.key,
     this.scrollController,
  });

  final ScrollController? scrollController;
  final int itemCount=9;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: JmSize.defaultSpace-7),
      child: SizedBox(
          height: JFluid.percentHeight(context: context, percent: 90),
          width: double.infinity,
          child: GridView.builder(
            controller: scrollController,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 13,
                mainAxisSpacing: 13),
            itemCount: itemCount,
            itemBuilder: (BuildContext context, int index) {
              return GrocesoryGridTile(
                image: JImages.defaultImage,
                listName: 'List Name',
                onTap: () {
                  Get.to(() => ScnGrocesoryList());
                },
              );
            },
          )),
    );
  }
}
