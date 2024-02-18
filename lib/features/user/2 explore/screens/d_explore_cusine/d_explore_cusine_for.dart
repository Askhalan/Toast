
import 'package:flutter/material.dart';

import '../../../../../common/app/widgets/texts/section_heading.dart';
import '../../../../../common/web/widgets/gap.dart';
import '../../../../../utils/constants/sizes.dart';
import '../d_explore_recent_recipes/w_vertical_tile.dart';

class ExploreCuisineForYou extends StatelessWidget {
  const ExploreCuisineForYou({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: JmSize.defaultSpace),
      child: Column(
        children: [
          const JSectionHeading(
            heading: 'Cuisines for you',
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
                      'assets/images/TempFoodImages/pexels-lumn-1410235.jpg',
                  title: 'pepper sweetcorn',
                  time: '20 min',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
