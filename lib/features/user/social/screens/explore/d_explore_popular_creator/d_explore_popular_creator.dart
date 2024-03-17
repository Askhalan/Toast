import 'package:flutter/material.dart';
import 'package:toast/common/app/widgets/texts/section_heading.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'w_popular_creator_tile.dart';

class ExplorePopularCreator extends StatelessWidget {
  const ExplorePopularCreator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(left:  JmSize.defaultSpace),
    child: Column(
      children: [
        const JSectionHeading(heading: 'Popular creators',isFixedColor: false,),
        const JGap(h: JmSize.spaceBtwItems,),
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return const PopularCreatorTile() ;
            },
          ),
        ),
    
      ],
    ),);
  }
}
