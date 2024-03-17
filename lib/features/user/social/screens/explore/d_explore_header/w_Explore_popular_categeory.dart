// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/common/app/widgets/builder%20tiles/almost_glassed_squre_tile.dart';
import 'package:toast/common/app/widgets/loaders/shimmers/categeory_shimmer.dart';
import 'package:toast/common/app/widgets/texts/section_heading.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/features/user/social/controller/categeory_controller.dart';
import 'package:toast/features/user/social/controller/post_controller.dart';
import 'package:toast/features/user/social/screens/filtered/categeory_based/scn_categery_view.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';

class ExplorePopularCategeory extends StatelessWidget {
  ExplorePopularCategeory({
    super.key,
  });

  final CategeoryController categeoryController = Get.find();
  final PostController postController = Get.find();
  @override
  Widget build(BuildContext context) {
    final categeoryController = Get.put(CategeoryController());

    return Padding(
      padding: const EdgeInsets.only(left: JmSize.defaultSpace),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: JmSize.defaultSpace),
            child: JSectionHeading(
              heading: 'Popular Categeory',
              buttonText: 'See all',
              showActionButton: true,
              buttonColor: JColor.white,
            ),
          ),
          const JGap(h: JmSize.spaceBtwItems),
          Obx(
            (){

              //-- Checking for the loading
              if(categeoryController.isLoading.value) return const ShimmerCategeory();

              //-- Checking is empty
              if(categeoryController.allCategeory.isEmpty){
                return Center(child: Text('No Data Found',style: Theme.of(context).textTheme.bodyLarge,),);
              }

              //-- Showing the data
              return SizedBox(
              height: 120,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: categeoryController.allCategeory.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    final categeory = categeoryController.allCategeory[index];
                    return  GestureDetector(
                      onTap: () {
                        categeoryController.fetchlPostsInCategeory(categeory.catName);
                        Get.to(()=>const ScnCategeoryView());
                      },
                      child: JAlmostGlassSquareTile(
                        title: categeory.catName,
                        applyTheme: false,
                        // image: 'assets/images/TempFoodImages/pexels-ash-376464.jpg',
                      ),
                    );
                  }),
            );
            }
          )
          // ShimmerCategeory()
        ],
      ),
    );
  }
}
