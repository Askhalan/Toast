// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:toast/common/app/widgets/decoration_items/custom_containers/primary_header_container.dart';
import 'package:toast/common/app/widgets/decoration_items/custom_containers/search_container.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/devices/responsive.dart';
import 'w_Explore_popular_categeory.dart';
import 'w_explore_appbar.dart';

class ExploreHeader extends StatelessWidget {
  const ExploreHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: JPrimaryHeaderContainer(
        height: JFluid.percentHeight(context: context, percent: 20),
        child:  Column(
          children:  [
            //-------------------------------------------------- APP BAR --------------------------------------------------
    
            ExploreAppBar(),
            JGap(h: JmSize.spaceBtwSections),
    
            //------------------------------------------------- SEARCH BAR ------------------------------------------------
    
            JSearchbarContainer(text: 'Find your desired recipe '),
            JGap(h: JmSize.spaceBtwSections),

            //---------------------------------------------- POPULAR CATEGEORY --------------------------------------------


            ExplorePopularCategeory()
          ],
        ),
      ),
    );
  }
}


