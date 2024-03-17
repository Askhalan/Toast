// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/common/app/widgets/decoration_items/custom_containers/primary_header_container.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/features/user/social/controller/search_controller.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/devices/responsive.dart';
import 'w_explore_appbar.dart';

class SearchActiveExploreHeader extends StatelessWidget {
   SearchActiveExploreHeader({
    super.key,
  });

final ExploreSearchController searchController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: JPrimaryHeaderContainer(
        height: JFluid.percentHeight(context: context, percent: 20),
        child:  Column(
          children:  [

            //-------------------------------------------------- APP BAR --------------------------------------------------
    
            ExploreAppBar(),
            JGap(h: JmSize.spaceBtwSections),
    
            //------------------------------------------------- SEARCH BAR ------------------------------------------------
    
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: JmSize.defaultSpace),
              child: TextFormField(
                onChanged: (value){
                  searchController.searchPost(value.toLowerCase().trim());
                },
                controller:searchController.searchTextController.value,
                decoration: InputDecoration(
                  hintText: 'Search',
                  suffixIcon: IconButton(onPressed: (){
                    searchController.stopSearch();
                  }, icon: Icon(Icons.cancel))
                ),
              ),
            ),
            JGap(h: JmSize.spaceBtwSections),

          
          ],
        ),
      ),
    );
  }
}


