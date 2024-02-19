import 'package:flutter/material.dart';
import 'package:toast/common/app/widgets/builder%20tiles/almost_glassed_squre_tile.dart';
import 'package:toast/common/app/widgets/texts/section_heading.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';

class ExplorePopularCategeory extends StatelessWidget {
  const ExplorePopularCategeory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding:  const EdgeInsets.only(left: JmSize.defaultSpace),
          child: Column(
            children: [
               const Padding(
     padding: EdgeInsets.only(right: JmSize.defaultSpace),
     child: JSectionHeading(
      heading: 'Popular Categeory',
      buttonText: 'See all',
      showActionButton: true,
      buttonColor: JColor.white,
               ),
               ),
               const JGap(h: JmSize.spaceBtwItems),
              SizedBox(
    height: 120,
    child: ListView.builder(
        shrinkWrap: true,
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return  const JAlmostGlassSquareTile(title: 'Drinks',image: 'assets/images/TempFoodImages/pexels-ash-376464.jpg',);
        }),
              )
            ],
          ),
        );
  }
}