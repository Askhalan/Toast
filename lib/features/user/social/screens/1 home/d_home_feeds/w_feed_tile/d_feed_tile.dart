// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/features/user/personalisation/controller/user_controller.dart';
import 'package:toast/features/user/social/models/post_model.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'w_feed_body.dart';
import 'w_feed_footer.dart';
import 'w_feed_header.dart';

class FeedItemTile extends StatelessWidget {
   FeedItemTile({
    super.key, required this.post,
  });
 final UserController useController = Get.find();
final PostModel post;


  @override
  Widget build(BuildContext context) {
    // useController.fetchOtherUserRecords(post.uid!);
    return GestureDetector(
      onTap: (){
        // Get.to(()=>RecipeIngeridentsViewScreen());
        // create a post details page and pass the variable post to it
      },
      child:  Card(
        surfaceTintColor: Colors.transparent,
        // elevation: 0.7,
      
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            
            //--------------------------------------- FEEDS HEADER SECTION --------------------------------------------
      
               FeedsHeader(
              // user:useController.otheruser
              ),
      
            //---------------------------------------- FEEDS BODY  SECTION --------------------------------------------
      
            const JGap(h: JmSize.spaceBtwItems * 0.7),
            FeedsBody(imageUrl: post.mainImage),
      
            //--------------------------------------- FEEDS FOOTER SECTION --------------------------------------------

            const JGap(h: JmSize.spaceBtwItems * 0.5),
            FeedFooter(title: post.title),
            const JGap(h: JmSize.spaceBtwItems ),

          ]),
        ),
      ),
    );
  }
}
