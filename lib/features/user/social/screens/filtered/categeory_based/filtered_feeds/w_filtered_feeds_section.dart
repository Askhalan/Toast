// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/common/app/widgets/loaders/shimmers/post_shimmer.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/features/user/social/controller/categeory_controller.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/helpers/helper_functions.dart';
import 'w_feed_tile/d_feed_tile.dart';

class FilteredFeedsSection extends StatelessWidget {
   FilteredFeedsSection({
    super.key,
  });
  
  final CategeoryController controller = Get.put(CategeoryController()); 

  @override
  Widget build(BuildContext context) {
    final isDark = JHelperFunctions.isDarkMode(context);
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: JmSize.defaultSpace * 0.5),
      child: Column(
        children: [
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 10),
          //   child: JSectionHeading(
          //     heading: 'Feeds',
          //     headingColor: isDark ? JColor.light : JColor.dark,
          //   ),
          // ),
          const JGap(h: JmSize.spaceBtwItems),
          Obx(() {
            if(controller.isLoading.value) {
              return const PostShimmer();
            }
            if(controller.postsInCategeory.isEmpty){

              return Center(child: Text('No posts to show',style: Theme.of(context).textTheme.bodyLarge,),);
            }
            return ListView.builder(
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.postsInCategeory.length,
              itemBuilder: (BuildContext context, int index) {

                return  FeedItemTile(post: controller.postsInCategeory[index],);
              },
            );
          }),
        ],
      ),
    );
  }
}
