// ignore_for_file: unused_local_variable, unused_import

import 'package:floating_frosted_bottom_bar/floating_frosted_bottom_bar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/features/user/grocesory/screens/grocesory_list_collection/scn_grocesory.dart';
import 'package:toast/features/user/personalisation/screens/profile/scn_user_profile.dart';
import 'package:toast/features/user/social/controller/add_directions_controller.dart';
import 'package:toast/features/user/social/controller/add_ingredients_controller.dart';
import 'package:toast/features/user/social/controller/add_optional_controller.dart';
import 'package:toast/features/user/social/controller/add_recipe_controller.dart';
import 'package:toast/features/user/social/controller/post_controller.dart';
import 'package:toast/features/user/social/screens/Recipe_view/recipe_view/scn_recipe_view.dart';
import 'package:toast/features/user/social/screens/add_post/1%20add_recipe/scn_add_recipe.dart';
import 'package:toast/features/user/social/screens/explore/scn_explore.dart';
import 'package:toast/features/user/social/screens/home/scn_home.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/devices/responsive.dart';
import 'package:unicons/unicons.dart';
import 'w_navigation_icon.dart';

class NavBar extends StatelessWidget {
  NavBar({
    super.key,
    required this.tabController,
    required this.currentPage,
  });

  final TabController tabController;
  final int currentPage;
  final postController = Get.put(PostController());
  @override
  Widget build(BuildContext context) {
    return FrostedBottomBar(
      width: JFluid.percentWidth(context: context, percent: 90),
      opacity: 0.6,
      sigmaX: 5,
      sigmaY: 5,
      borderRadius: BorderRadius.circular(JSize.borderRadLg),
      duration: const Duration(milliseconds: 400),
      hideOnScroll: true,
      body: (context, controller) {
        return TabBarView(
            controller: tabController,
            dragStartBehavior: DragStartBehavior.down,
            physics: const BouncingScrollPhysics(),
            children: [
              ScnHome(scrollController: controller),
              ScnExplore(scrollController: controller),
              ScnAddRecipe(scrollController: controller),
              ScnGrocesory(scrollController: controller),
              // const ScnDetailedRecipeView(),
              ScnUserProfile(scrollController: controller)
            ]);
      },
      child: TabBar(
        indicatorPadding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
        controller: tabController,
        indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(color: JColor.primary, width: 4),
          insets: EdgeInsets.fromLTRB(16, 0, 16, 8),
        ),
        tabs: [
          NavIcon(
              icons: UniconsLine.estate,
              color: currentPage == 0 ? JColor.primary : Colors.white),
          NavIcon(
              icons: UniconsLine.search,
              color: currentPage == 1 ? JColor.primary : Colors.white),
          NavIcon(
              icons: UniconsLine.plus_square,
              color: currentPage == 2 ? JColor.primary : Colors.white),
          NavIcon(
              icons: UniconsLine.book,
              color: currentPage == 3 ? JColor.primary : Colors.white),
          NavIcon(
              icons: UniconsLine.user,
              color: currentPage == 4 ? JColor.primary : Colors.white),
        ],
      ),
    );
  }
}
