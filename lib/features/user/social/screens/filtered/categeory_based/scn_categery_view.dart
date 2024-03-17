import 'dart:core';

import 'package:flutter/material.dart';
import 'package:toast/features/user/social/screens/filtered/categeory_based/d_filtered_header/d_filtered_header.dart';
import 'package:toast/features/user/social/screens/filtered/categeory_based/filtered_feeds/w_filtered_feeds_section.dart';



class ScnCategeoryView extends StatelessWidget {
   const ScnCategeoryView ({super.key, this.scrollController});
  // final categeoryController = Get.put(CategeoryController());
  final ScrollController? scrollController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: scrollController,
        child:  Column(
          children: [
            //-------------------------------------------------- HEADER SECTION -------------------------------------------

            const FilteredHeader(),

            //-------------------------------------------------- FEEDS SECTION --------------------------------------------

            FilteredFeedsSection()
          ],
        ),
      ),
    );
  }
}
