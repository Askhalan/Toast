import 'package:flutter/material.dart';
import 'package:toast/common/app/widgets/texts/section_heading.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/helpers/helper_functions.dart';
import 'w_feed_tile/d_feed_tile.dart';

class HomeFeedsSection extends StatelessWidget {
  const HomeFeedsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = JHelperFunctions.isDarkMode(context);
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: JmSize.defaultSpace * 0.5),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: JSectionHeading(
              heading: 'Feeds',
              headingColor: isDark ? JColor.light : JColor.dark,
            ),
          ),
          const JGap(h: JmSize.spaceBtwItems),
          ListView.builder(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return const FeedItemTile();
            },
          ),
        ],
      ),
    );
  }
}
