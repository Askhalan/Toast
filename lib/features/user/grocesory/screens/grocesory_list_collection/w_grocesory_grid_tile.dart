import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glass/glass.dart';
import 'package:toast/features/user/grocesory/contollers/grocesory_controller.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';

class GrocesoryGridTile extends StatelessWidget {
   GrocesoryGridTile({
    super.key,
    required this.listName,
    this.onTap, required this.image, required this.id,
  });
  final GrocesoryController groesoryController = Get.find();
  final String listName;
  final void Function()? onTap;
  final int id;
  final String image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress:(){
        groesoryController.toggleDeleteButtonVisibility();
      } ,
      onTap:  onTap,
      child: Stack(
        children: [
          Container(
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

          Obx(()=>
             Visibility(
              visible: groesoryController.visibleDeleteBtn.value,
              child: Positioned(
                top: 75,
                left: 15,
                child: GestureDetector(
                  onTap: () {
                    groesoryController.deleteGrocesoryList(id);
                  },

                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 20),
                     decoration: BoxDecoration(
                        color: JColor.error,
                        borderRadius: BorderRadius.circular(JSize.borderRadLg),
                       ),
                       child: const Text('delete'),),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
