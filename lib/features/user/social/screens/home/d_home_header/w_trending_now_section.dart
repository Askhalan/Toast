import 'package:flutter/material.dart';
import 'package:toast/common/app/widgets/builder%20tiles/square_tiles.dart';
import 'package:toast/common/app/widgets/texts/section_heading.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/utils/constants/sizes.dart';

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

