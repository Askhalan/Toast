import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:glass/glass.dart';
import 'package:toast/common/app/widgets/loaders/shimmers/shimmer_effect.dart';
import 'package:toast/features/user/social/models/categeory_model.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class JAlmostGlassSquareTile extends StatelessWidget {
  const JAlmostGlassSquareTile({
    super.key,
    this.title = '',
    this.image = '',
    this.onTap,  this.categeory, this.applyTheme = true,

  });
  final CategeoryModel? categeory;
  final String title;
  final String image;
  final void Function()? onTap;
  final bool applyTheme;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AspectRatio(
        aspectRatio: 1.1 / 1,
        child: Container(
            margin: const EdgeInsets.only(right: JmSize.spaceBtwItems),
            padding: const EdgeInsets.all(JmSize.sm * 1.3),
            decoration: BoxDecoration(
                color: JColor.light,
                borderRadius: BorderRadius.circular(JSize.borderRadLg),
                // image: DecorationImage(
                //     image:, fit: BoxFit.cover)
                    ),
            child: SizedBox(
              child: Center(
                  child: Text(title,
                style:applyTheme? Theme.of(context).textTheme.headlineSmall: Theme.of(context).textTheme.headlineSmall!.apply(color: JColor.dark),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )),
            ).asGlass(
              
                clipBorderRadius: BorderRadius.circular(
                  JmSize.borderRadiusLg,
                ),
                // tintColor: Colors.transparent,
                blurX: 3,
                blurY: 3)),
      ),
    );
  }
}





class UserProfileImage extends StatelessWidget {
  const UserProfileImage({
    super.key,
    required this.image,
    this.isNetworkImage = false,  this.height=90,  this.width=90,
  });
  final bool isNetworkImage;
  final String image;
  final double height,width;
  // final controller = UserController.instance;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(JSize.borderRadLg),
      ),
      child: Column(
        children: [
          if (isNetworkImage)
            ClipRRect(
              borderRadius: BorderRadius.circular(JmSize.borderRadiusLg),
              child: CachedNetworkImage(
                width: width,height: height,
                  fit: BoxFit.cover,
                  progressIndicatorBuilder: (context, url, progress) =>
                       JShimmerEffect(width: width, height: height),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  imageUrl: image),
            )
          else
            Image(fit: BoxFit.fill, image: AssetImage(image)),
         
        ],
      ),
    );
  }
}
