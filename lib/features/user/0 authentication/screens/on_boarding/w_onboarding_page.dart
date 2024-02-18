import 'package:flutter/material.dart';

import '../../../../../common/web/widgets/gap.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/devices/responsive.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(JmSize.defaultSpace),
      child: Column(
        children: [
          Image(
            image: AssetImage(image),
            height: JFluid.percentHeight(context: context, percent: 70),
            width: JFluid.percentWidth(context: context, percent: 100),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const JGap(
            h: JmSize.spaceBtwItems,
          ),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
