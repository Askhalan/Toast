// ignore_for_file: prefer_const_constructors, avoid_print

import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/features/user/personalisation/controller/user_controller.dart';
import 'package:toast/features/user/social/controller/post_controller.dart';
import 'package:toast/features/user/social/models/post_model.dart';
import 'package:toast/features/user/social/screens/Recipe_view/recipe_view/scn_recipe_view.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'w_feed_body.dart';
import 'w_feed_footer.dart';
import 'w_feed_header.dart';

class FeedItemTile extends StatelessWidget {
  FeedItemTile({
    super.key, required this.index,
  });
  final UserController userController = Get.find();
  final PostController postController = Get.find();
  final int index;


  @override
  Widget build(BuildContext context) {

    postController.currentPost.value = postController.allPosts[index];
    final PostModel post = postController.currentPost.value;

    return GestureDetector(
      onTap: () {
         
    
        Get.to(() => ScnDetailedRecipeView(
              post: post,
            ));
        // create a post details page and pass the variable post to it
      },
      child: Card(
        surfaceTintColor: Colors.transparent,
        // elevation: 0.7,

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [

            //--------------------------------------- FEEDS HEADER SECTION --------------------------------------------

            FutureBuilder<DocumentSnapshot>(
              future: FirebaseFirestore.instance
                  .collection('users')
                  .doc(post.uid)
                  .get(),
              builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else { 
                  final data = snapshot.data!;
                  final String username = data.get('Username');
                  final String image = data.get('ProfilePic');
                  log(username);
                  return FeedsHeader(username:username ,image:image,);
                }
              },
            ),

            //---------------------------------------- FEEDS BODY  SECTION --------------------------------------------

            const JGap(h: JmSize.spaceBtwItems * 0.7),
            FeedsBody(),

            //--------------------------------------- FEEDS FOOTER SECTION --------------------------------------------

            const JGap(h: JmSize.spaceBtwItems * 0.5),
            FeedFooter(title: post.title),
            const JGap(h: JmSize.spaceBtwItems),
          ]),
        ),
      ),
    );
  }
}
