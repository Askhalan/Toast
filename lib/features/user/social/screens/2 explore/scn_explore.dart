// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'd_explore_cusine/d_explore_cusine_for.dart';
import 'd_explore_header/d_explore_header.dart';
import 'd_explore_popular_creator/d_explore_popular_creator.dart';
import 'd_explore_recent_recipes/d_recent_recipes.dart';


class ScnExplore extends StatelessWidget {
  const ScnExplore({super.key, this.scrollController});

  final ScrollController? scrollController;
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            //---------------------------------------------- HEADER SECTION -----------------------------------------

            ExploreHeader(),

            //------------------------------------------- RECENT RECIPES SECTION ------------------------------------

            ExploreRecentRecipe(),

            //---------------------------------------------- CUISINE SECTION ----------------------------------------

            JGap(h: JmSize.spaceBtwSections,),
            ExploreCuisineForYou(),

            //------------------------------------------- POPULAR CREATOR SECTION -----------------------------------

            JGap(h: JmSize.spaceBtwSections,),
            ExplorePopularCreator(),
            
            JGap(h: JmSize.spaceBtwSections/2,),
          ],
        ),
      ),
    );
  }
}


