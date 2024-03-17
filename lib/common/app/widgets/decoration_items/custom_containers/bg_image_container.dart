import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/common/app/widgets/loaders/shimmers/shimmer_effect.dart';
import 'package:toast/features/user/social/models/post_model.dart';
import 'package:toast/features/user/social/screens/Recipe_view/recipe_view/scn_recipe_view.dart';

import '../../../../../utils/constants/sizes.dart';

class BgImageContainer extends StatelessWidget {
  const BgImageContainer({
    super.key,
    required this.post,
  });

  final PostModel post;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
         Get.to(() => ScnDetailedRecipeView(
              post: post,
            ));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(JmSize.borderRadiusSm)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(JmSize.borderRadiusMd),
          child: CachedNetworkImage(
            imageUrl: post.mainImage,
            fit: BoxFit.cover,
            progressIndicatorBuilder: (context, url, progress) =>
                const JShimmerEffect(
                    width: double.infinity, height: double.infinity),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
