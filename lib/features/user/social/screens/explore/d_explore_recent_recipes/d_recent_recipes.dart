import 'package:flutter/material.dart';
import 'package:toast/common/app/widgets/texts/section_heading.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'w_vertical_tile.dart';

class ExploreRecentRecipe extends StatelessWidget {
  const ExploreRecentRecipe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: JmSize.defaultSpace),
      child: Column(
        children: [
          const JSectionHeading(
            heading: 'Recent Recipies',
            isFixedColor: false,
          ),
          const JGap(
            h: JmSize.spaceBtwItems,
          ),
          SizedBox(
            height: 220,
            child: ListView.builder(
              // shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (BuildContext context, int index) {
                return const JVerticalTile(
                  image:
                      'assets/images/TempFoodImages/pexels-valeria-boltneva-842571.jpg',
                  title: 'pepper sweetcorn ramen',
                  time: '10 min',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
