// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:toast/features/admin/1-navigation/screen/widgets/w_navigation_item.dart';
import 'package:toast/utils/constants/sizes.dart';

class WNavBody extends StatelessWidget {
  const WNavBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(JmSize.defaultSpace/2),
      child: Column(
        children: const [
          JNavigationItem(
            icon: Icons.home_outlined,
            pageName: 'Home',
            index: 0,
          ),
          JNavigationItem(
            icon: Icons.grid_view,
            pageName: 'Ingeridents',
            index: 1,
          ),
          JNavigationItem(
            icon: Icons.people_outline,
            pageName: 'Users',
            index: 2,
          ),
          JNavigationItem(
            icon: Icons.local_post_office,
            pageName: 'Posts',
            index: 3,
          ),
        ],
      ),
    );
  }
}
