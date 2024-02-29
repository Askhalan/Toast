import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:toast/data/repository/post_repository.dart';
import 'package:toast/features/user/social/controller/add_directions_controller.dart';
import 'package:toast/features/user/social/controller/add_ingredients_controller.dart';
import 'package:toast/features/user/social/controller/add_optional_controller.dart';
import 'package:toast/features/user/social/controller/add_recipe_controller.dart';
import 'package:toast/features/user/social/models/post_model.dart';
import 'package:toast/features/user/social/screens/navigation_menu/screens/nav_menu.dart';
import 'package:toast/utils/constants/image_strings.dart';
import 'package:toast/utils/popups/full_screen_loaders.dart';
import 'package:toast/utils/popups/snackbars.dart';

class PostController extends GetxController {
  static PostController get instance => Get.find();

//------------------------------------------- REFERING TO THE INSTANCES --------------------------------------

  final postRepository = Get.put(PostRepository());
  final recipeController = Get.put(AddRecipeController());
  final ingredientsController = Get.put(AddIngredientsController());
  final directionsController = Get.put(AddDirectionsController());
  final optionalController = Get.put(AddOptionalController());
  final _auth = FirebaseAuth.instance;

//-------------------------------------------------- VARIABLES --------------------------------------

  RxList<PostModel> allPosts = <PostModel>[].obs;
  RxList<PostModel> currentUserPosts = <PostModel>[].obs;
  // RxList<List<PostModel>> postsInCategeory = <List<PostModel>>[].obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    fetchAllPosts();
    fetchCurrentUserPosts();
    super.onInit();
  }

//-------------------------------------------------- SAVE POST --------------------------------------------

  Future<void> savePost() async {
    try {
      JFullScreenLoaders.openLoadingDialog('Posting', JImages.loading);
      //Map data
      final post = PostModel(
          uid: _auth.currentUser?.uid,
          title: recipeController.title.text,
          description: recipeController.description.text,
          mainImage: recipeController.imageUrl.value,
          categeory: recipeController.selectedCategeory.value,
          cusine: recipeController.selectedCuisine.value,
          dificuilty: recipeController.selectedDifficuilty.value,
          cookingTime: recipeController.cookingTime.value,
          serves: recipeController.noOfServes.value,
          ingredients: ingredientsController.getTextList(),
          directions: directionsController.getTextList(),
          youtubeLink: optionalController.youtubeLinkController.text,
          optionalImages: optionalController.imageUrls,
          createdAt: Timestamp.now());

      // print('''Print from user >>>>>>>>>>>>
      //   =========================================================
      //  Uid: ${post.uid}
      //  Title: ${post.title}
      //  Description: ${post.description}
      //  MainImage: ${post.mainImage}
      //  Categeory: ${post.categeory}
      //  Cusine: ${post.cusine}
      //  Difficuilty; ${post.dificuilty}
      //  CookingTime: ${post.cookingTime}
      //  Serves: ${post.serves}
      //  Ingredients: ${post.ingredients}
      //  Directions: ${post.directions}
      //  YoutubeLink: ${post.youtubeLink}
      //  OptionalImages: ${post.optionalImages}
      // =========================================================
      //   ''');

      await postRepository.savePost(post);
     Get.offAll(() => const NavigationMenu());
    } catch (e) {
      JFullScreenLoaders.stopLoading();
      JMessages.snackbarerror(
          title: 'Error', message: 'Something went wrong: $e');
    } finally {}
  }

//-------------------------------------------------- FETCH ALL POST --------------------------------------------

  fetchAllPosts() async {
    try {

      isLoading.value= true;
      final posts = await postRepository.getAllPosts();
      allPosts.addAll(posts);

    } catch (e) {
      log(e.toString());
      // JMessages.snackbarerror(
      //     title: 'Error', message: 'Something went wrong: helllooooo $e');
    } finally {
      isLoading.value= false;
    }
  }

//-------------------------------------------------- FETCH CURRENT USER POST --------------------------------------------

  fetchCurrentUserPosts() async {
    try {

      isLoading.value= true;
      final posts = await postRepository.getUserPosts();
      currentUserPosts.addAll(posts);
      log('Log from --fetchCurrentUserPosts');
    } catch (e) {
      JMessages.snackbarerror(
          title: 'Error', message: 'Something went wrong: helllooooo $e');
    } finally {
      isLoading.value= false;
    }
  }

}
