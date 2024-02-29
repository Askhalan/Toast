// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/common/app/widgets/appbar/appbar.dart';
import 'package:toast/features/user/social/controller/categeory_controller.dart';
import 'package:toast/utils/constants/colors.dart';


class FilteredAppBar extends StatelessWidget {
   FilteredAppBar({
    super.key,
  });
   CategeoryController categeoryController = Get.find();
  @override
  Widget build(BuildContext context) {

    return JAppbar(
      centerTitle: true,
      title: Obx(() {
      
          return Text(
          categeoryController.showingCategeory.value,
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(fontSize: 22, color: JColor.white),
          );
        
      }),
     
    );
  }
}
