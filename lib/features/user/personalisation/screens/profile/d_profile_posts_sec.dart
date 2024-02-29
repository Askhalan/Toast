import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/common/app/widgets/loaders/shimmers/post_shimmer.dart';
import 'package:toast/features/user/social/controller/post_controller.dart';

import '../../../../../common/app/widgets/decoration_items/custom_containers/bg_image_container.dart';
import '../../../../../utils/constants/sizes.dart';

class ProfilePostsSection extends StatelessWidget {
  ProfilePostsSection({
    super.key,
  });
  final PostController postController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: JmSize.spaceBtwItems * 0.7),
      child: Obx(() {
        if (postController.isLoading.value) {
          return const PostShimmer();
        }
        if (postController.currentUserPosts.isEmpty) {
          return Center(
            child: Text(
              'Add some posts',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          );
        }
        log('Length---- of the list------${postController.currentUserPosts.length}');
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: JmSize.spaceBtwItems * 0.5,
            mainAxisSpacing: JmSize.spaceBtwItems * 0.5,
            // childAspectRatio: 2/1
          ),
          itemCount: postController.currentUserPosts.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
                elevation: 10,
                child: BgImageContainer(
                  post: postController.currentUserPosts[index],
                ));
          },
        );
      }),
    );
  }
}
