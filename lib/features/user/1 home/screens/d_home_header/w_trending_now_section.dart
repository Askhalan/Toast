import 'package:flutter/material.dart';

import '../../../../../common/app/widgets/builder tiles/square_tiles.dart';
import '../../../../../common/app/widgets/texts/section_heading.dart';
import '../../../../../common/web/widgets/gap.dart';
import '../../../../../utils/constants/sizes.dart';

class HomeTrendingNow extends StatelessWidget {
  const HomeTrendingNow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: JmSize.defaultSpace),
      child: Column(
        children: [
          const JSectionHeading(
            heading: 'Trending Now',
          ),
          const JGap(h: JmSize.spaceBtwItems),
          SizedBox(
            height: 120,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 8,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return const JSquareItemTile(title: 'Arabian',image: 'assets/images/TempFoodImages/pexels-ash-376464.jpg',);
                }),
          )
        ],
      ),
    );
  }
}

