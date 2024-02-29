import 'package:flutter/material.dart';
import 'package:toast/features/user/social/models/post_model.dart';

import '../../../../../utils/constants/sizes.dart';

class BgImageContainer extends StatelessWidget {
  const BgImageContainer({
    super.key,required this.post,
  });

 final PostModel post;
  @override
  Widget build(BuildContext context) {
    return Container(
                              decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage(
             post.mainImage ),
          fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(JmSize.borderRadiusSm)),
                            );
  }
}






//-------------------- TEMPERORY --------------------

class TempBgImageContainer extends StatelessWidget {
  const TempBgImageContainer({
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
