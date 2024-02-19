import 'package:flutter/material.dart';
import 'package:toast/common/app/widgets/decoration_items/custom_containers/primary_header_container.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'w_home_appbar.dart';
import 'w_trending_now_section.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  const JPrimaryHeaderContainer(
      height: 310,
        child: Column(
      children: [
        //-------------------------------------------------- APP BAR --------------------------------------------------

        HomeAppBar(),
        JGap(
          h: JmSize.spaceBtwSections /2,
        ),

        //---------------------------------------------- TRENDING NOW SECTION -----------------------------------------

        HomeTrendingNow(),
      ],
    ));
  }
}
