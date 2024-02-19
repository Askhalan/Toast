import 'dart:core';

import 'package:flutter/material.dart';
import 'd_home_feeds/w_home_feeds_section.dart';
import 'd_home_header/d_home_header.dart';

class ScnHome extends StatelessWidget {
  const ScnHome({super.key, this.scrollController});

  final ScrollController? scrollController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: scrollController,
        child: const Column(
          children: [
            //-------------------------------------------------- HEADER SECTION -------------------------------------------

            HomeHeader(),

            //-------------------------------------------------- FEEDS SECTION --------------------------------------------

            HomeFeedsSection()
          ],
        ),
      ),
    );
  }
}
