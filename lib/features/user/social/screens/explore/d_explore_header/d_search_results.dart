

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/features/user/social/controller/post_controller.dart';
import 'package:toast/features/user/social/controller/search_controller.dart';
import 'package:toast/features/user/social/models/post_model.dart';
import 'package:toast/utils/constants/sizes.dart';

class SearchResults extends StatelessWidget {
  SearchResults({
    super.key,
  });
  final ExploreSearchController searchController = Get.find<ExploreSearchController>();
  final PostController postController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: JmSize.defaultSpace / 2),

      child: 
         ValueListenableBuilder(
          valueListenable: searchController.searchNotifier,
           builder: (BuildContext context, List<PostModel> list, Widget? _) {
             return Expanded(
                  child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: list.length,
                      separatorBuilder: (context, index) => const JGap(
                        h: 10.0,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        final data = list[index];
                       
                        if(data.title.contains(searchController.searchTextController.value.text) ){
                          return ListTile(
                          tileColor: const Color.fromARGB(255, 254, 194, 194),
                          title: Text(data.title),
                        );
                        }
                        return null;
                      
                      },
                    ),
                 
              
                
                     
                );
           }
         ),
      )
      ;
  }
}
