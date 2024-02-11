import 'package:flutter/material.dart';
import 'package:toast/common/app/widgets/decoration_items/foster_glass.dart';
import 'package:unicons/unicons.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/devices/responsive.dart';
import '../contollers/navigation_bar_controller.dart';
import 'w_navigation_icon.dart';

class JNavigationBar extends StatelessWidget {
  JNavigationBar({
    super.key,
  });

  final controller = NavigationBarController();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      left: 10,
      right: 10,
      child: SizedBox(
        width: JFluid.percentWidth(context: context, percent: 90),
        height: JFluid.percentHeight(context: context, percent: 9),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavigationIcon(
              icon: const Icon(UniconsLine.estate),
              onPressed:  () => controller.selectHome(),
            ),
            NavigationIcon(
              icon: const Icon(UniconsLine.search),
              onPressed: () => controller.selectSearch(),
            ),
            NavigationIcon(
              icon: const Icon(UniconsLine.plus_circle),
              onPressed: () => controller.selectAddPost(),
            ),
            NavigationIcon(
              icon: const Icon(UniconsLine.clipboard_notes),
              onPressed: () => controller.selectGrocessory(),
            ),
            NavigationIcon(
              icon: const Icon(UniconsLine.user),
              onPressed: () => controller.selectProfile(),
            ),
          ],
        ),
      ).asGlass(clipBorderRadius: BorderRadius.circular(JSize.borderRadLg)),
    );
  }
}
