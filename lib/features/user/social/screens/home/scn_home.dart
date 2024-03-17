import 'dart:core';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/features/user/grocesory/contollers/grocesory_controller.dart';
import 'package:toast/features/user/social/controller/categeory_controller.dart';
import 'd_home_feeds/w_home_feeds_section.dart';
import 'd_home_header/d_home_header.dart';

class ScnHome extends StatelessWidget {
   ScnHome({super.key, this.scrollController});
  final categeoryController = Get.put(CategeoryController());
  final grocesoryController = Get.put(GrocesoryController());
  final ScrollController? scrollController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: scrollController,
        child:  Column(
          children: [
            //-------------------------------------------------- HEADER SECTION -------------------------------------------

            const HomeHeader(),

            //-------------------------------------------------- FEEDS SECTION --------------------------------------------

            HomeFeedsSection()
          ],
        ),
      ),
    );
  }
}
