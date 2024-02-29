import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/features/user/social/controller/add_directions_controller.dart';

import 'w_add_directions_tile.dart';
import 'w_directions_add_btn.dart';

class AddDirectionsForm extends StatelessWidget {
   const AddDirectionsForm({super.key});
static AddDirectionsController get instance => Get.find();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(
        () {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: instance.itemCount.value + 1,
            itemBuilder: (context, index) {

              return index == instance.itemCount.value
                  ? 
                  //--------------- DIRECTIONS ADD BUTTON ---------------

                  const DirectionsAddButton()

                  //--------------- DIRECTIONS ADD FIELD ---------------

                  : AddDirectionsTile(
                      index: index,
                      textEditingController: instance.textControllers[index],
                    );
            },
          );
        },
      ),
    );
  }
}
