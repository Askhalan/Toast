import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:toast/features/user/social/controller/post_controller.dart';
import 'package:toast/features/user/social/models/post_model.dart';

class FeedFooter extends StatelessWidget {
   FeedFooter({
    super.key, required this.title,
  });
 final PostController postController = Get.find();
    
final String title;
  @override
  Widget build(BuildContext context) {
    final PostModel post = postController.currentPost.value ;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
         post.title,
          style: Theme.of(context).textTheme.bodyLarge,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        // GestureDetector(
        //     onTap: () {},
        //     child: const Icon(
        //       UniconsLine.heart,
        //       size: 25,
        //       color: JColor.error,
        //  ))
      ],
    );
  }
}
