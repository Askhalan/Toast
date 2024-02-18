import 'package:flutter/material.dart';
import 'package:glass/glass.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../1 home/screens/d_home_feeds/w_feed_tile/w_save_button.dart';

class JVerticalTile extends StatelessWidget {
  const JVerticalTile({
    super.key,
    required this.title,
    required this.time,
    required this.image,
  });
  final String title;
  final String time;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(right: JmSize.spaceBtwItems),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(JmSize.borderRadiusLg)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.all(JmSize.sm),
            width: 150,
            height: 90,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: JColor.light,
                      ),
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      time,
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: JColor.light,
                          ),
                      textAlign: TextAlign.left,
                    ),
                    const SaveButton()
                  ],
                ),
              ],
            ),
          ).asGlass(
              clipBorderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(JmSize.borderRadiusLg)),
              blurX: 5,
              blurY: 5)
        ],
      ),
    );
  }
}
