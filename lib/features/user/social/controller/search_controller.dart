// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/features/user/social/controller/post_controller.dart';
import 'package:toast/features/user/social/models/post_model.dart';

class ExploreSearchController extends GetxController {
  var isSearching = false.obs;
  // var searchQuery = ''.obs;
  ValueNotifier<List<PostModel>>searchNotifier = ValueNotifier([]);

final PostController postController = Get.find();
  final searchTextController = TextEditingController().obs;

  void startSearch() {
    isSearching.value = true;
  }

  void searchPost(String keyword){
    searchNotifier.value.clear();
    for (var element in postController.allPosts) {
      String temp = element.title.toLowerCase().trim();
      log(temp);
      log(keyword);
      if(temp.contains(keyword)){
        searchNotifier.value.add(element);
      }
    }
    searchNotifier.notifyListeners();
  }

  void stopSearch() {
    isSearching.value = false;
    // searchQuery.value = ''; // Clear the search query when stopping search
  }

  void setSearchQuery(String query) {
    // searchQuery.value = query;
    // Implem
    //ent your search functionality here based on the query
  }


//   List<PostModel> searchPost(){
  
//   // postController.allPosts.contains(element) 

// // return ;
//   }
}
