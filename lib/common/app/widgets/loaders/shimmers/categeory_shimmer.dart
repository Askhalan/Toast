import 'package:flutter/material.dart';
import 'package:toast/common/app/widgets/loaders/shimmers/shimmer_effect.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/utils/constants/sizes.dart';

class ShimmerCategeory extends StatelessWidget {
  const ShimmerCategeory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            height: 120,
            child: ListView.separated(
                shrinkWrap: true,
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => const JGap(w: JmSize.spaceBtwItems,),
                itemBuilder: (_, index) {
                  return const AspectRatio(
                     aspectRatio: 1 / 1,
                    child: JShimmerEffect(width: 50, height: 50));
                }),
          );
  }
}

