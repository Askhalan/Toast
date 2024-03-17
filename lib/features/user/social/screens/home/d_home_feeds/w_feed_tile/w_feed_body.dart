import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/features/user/social/controller/post_controller.dart';
import 'package:toast/features/user/social/models/post_model.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'w_rating_chip.dart';
import 'w_save_button.dart';

class FeedsBody extends StatelessWidget {
   FeedsBody({
    super.key,
    this.onTap,
  });
   final PostController postController = Get.find();

  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final PostModel post = postController.currentPost.value ;
    return Stack(
      children: [
        GestureDetector(
          onTap: onTap,
          child: AspectRatio(
            aspectRatio: 7 / 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(JmSize.borderRadiusLg),
                  image:  DecorationImage(
                      image: NetworkImage(
                          post.mainImage),
                      fit: BoxFit.cover)),
            ),
          ),
        ),
        const RatingChip(),
        const SaveButton(),
      ],
    );
  }
}



