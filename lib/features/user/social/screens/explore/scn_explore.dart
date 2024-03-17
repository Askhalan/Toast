// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/features/user/social/controller/search_controller.dart';
import 'package:toast/features/user/social/screens/explore/d_explore_header/d_search_active_header.dart';
import 'package:toast/features/user/social/screens/explore/d_explore_header/d_search_results.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'd_explore_cusine/d_explore_cusine_for.dart';
import 'd_explore_header/d_explore_header.dart';
import 'd_explore_popular_creator/d_explore_popular_creator.dart';
import 'd_explore_recent_recipes/d_recent_recipes.dart';

class ScnExplore extends StatelessWidget {
  ScnExplore({super.key, this.scrollController});

  final ExploreSearchController searchController =
      Get.put(ExploreSearchController());
  final ScrollController? scrollController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          controller: scrollController,
          child: Obx(
            () => Stack(
              children: [
                Visibility(
                  visible: searchController.isSearching.value,
                  child: Column(
                    children: [
                      //---------------------------------------------- SEARCH ACTIVE HEADER SECTION -----------------------------------------

                      SearchActiveExploreHeader(),

                      //------------------------------------------- SEARCH RESULTS ------------------------------------

                      SearchResults()
                    ],
                  ),
                ),
                Visibility(
                  visible: !searchController.isSearching.value,
                  child: Column(
                    children: [
                      //---------------------------------------------- HEADER SECTION -----------------------------------------

                      ExploreHeader(),

                      //------------------------------------------- RECENT RECIPES SECTION ------------------------------------

                      ExploreRecentRecipe(),

                      //---------------------------------------------- CUISINE SECTION ----------------------------------------

                      JGap(
                        h: JmSize.spaceBtwSections,
                      ),
                      ExploreCuisineForYou(),

                      //------------------------------------------- POPULAR CREATOR SECTION -----------------------------------

                      JGap(
                        h: JmSize.spaceBtwSections,
                      ),
                      ExplorePopularCreator(),

                      JGap(
                        h: JmSize.spaceBtwSections / 2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
