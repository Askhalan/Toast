// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:toast/common/app/widgets/appbar/tab_bar.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/helpers/helper_functions.dart';

import 'd_profile_cookbook_sec .dart';
import 'd_profile_posts_sec.dart';
import 'w_profile_header.dart';
import 'w_profile_user_info.dart';

class ScnUserProfile extends StatelessWidget {
  const ScnUserProfile({super.key, this.scrollController});
  final ScrollController? scrollController;

  @override
  Widget build(BuildContext context) {
    final isDark = JHelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          body: NestedScrollView(
              headerSliverBuilder: (_, innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    floating: true,
                    backgroundColor: JHelperFunctions.isDarkMode(context)
                        ? JColor.black
                        : JColor.white,
                    expandedHeight: 540,
                    flexibleSpace: Padding(
                      padding: EdgeInsets.all(0),
                      child: ListView(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          //---------------------------------------- BANNER + PROFILE PIC + ACTIONS ---------------------------------------

                          ProfileHeader(isDark: isDark),

                          //-------------------------------------------------- USER INFO --------------------------------------------------

                          JGap(h: JmSize.spaceBtwSections * 2),
                          ProfileUserInfo(),

                          //---------------------------------------------------- POSTS ----------------------------------------------------
                        ],
                      ),
                    ),
                    bottom: JTabbar(tabs: [
                      Tab(
                        child: SizedBox(
                            child: Text('Toasts')),
                      ),
                      Tab(
                        child: Text('Cookbook'),
                      ),
                    ]),
                  ),
                ];
              },
              body: TabBarView(
                children: [
                  ProfilePostsSection(),
                  ProfileCookbookSection()
                ],
              ))),
    );
  }
}





   
