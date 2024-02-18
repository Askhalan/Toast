import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class BgImageContainer extends StatelessWidget {
  const BgImageContainer({
    super.key, required this.image,
  });
 final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
                              decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage(
             image ),
          fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(JmSize.borderRadiusSm)),
                            );
  }
}
