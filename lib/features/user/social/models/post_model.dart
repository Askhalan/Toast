import 'dart:core';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

class PostModel {
  //--------------------------  VARIABLES --------------------------

  String? uid;
  String title;
  String description;
  String mainImage;
  String categeory;
  String cusine;
  String dificuilty;
  int cookingTime;
  int serves;
  List<dynamic> ingredients;
  List<dynamic> directions;
  String youtubeLink;
  List<dynamic> optionalImages;
  Timestamp? createdAt;

  //--------------------------  CONSTRUCTOR --------------------------

  PostModel({
    this.uid = '',
    required this.title,
    required this.description,
    required this.mainImage,
    required this.categeory,
    required this.cusine,
    required this.dificuilty,
    required this.cookingTime,
    required this.serves,
    required this.ingredients,
    required this.directions,
    this.youtubeLink = '',
    required this.createdAt,
    required this.optionalImages,
  });

  //------------------------  JSON CONVERTOR -------------------------

  Map<String, dynamic> tojson() => {
        'UserId': uid,
        'Title': title,
        'Description': description,
        'MainImage': mainImage,
        'Categeory': categeory,
        'Cusine': cusine,
        'Dificuilty': dificuilty,
        'CookingTime': cookingTime,
        'Serves': serves,
        'Ingredients': ingredients,
        'Directions': directions,
        'YoutubeLink': youtubeLink,
        'OptionalImages': optionalImages,
        'CreatedAt':createdAt
      };

  //-------------------------  EMPTY CONSTRUCTOR ------------------------

  static PostModel empty() => PostModel(
        title: '',
        description: '',
        mainImage: '',
        categeory: '',
        cusine: '',
        dificuilty: '',
        cookingTime: 0,
        serves: 0,
        ingredients: [],
        directions: [],
        youtubeLink: '',
        optionalImages: [],
        createdAt: null,
        
      );

  //-------------------------- TO MODEL CONVERTOR ------------------------

  factory PostModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;
      log('${ data['Title']}');
      return PostModel(
        uid: data['UserId'] ?? '',
        title: data['Title'] ?? '',
        description: data['Description'] ?? '',
        mainImage: data['MainImage'] ?? '',
        categeory: data['Categeory'] ?? '',
        cusine: data['Cusine'] ?? '',
        dificuilty: data['Dificuilty'] ?? '',
        cookingTime: data['CookingTime'] ?? '',
        serves: data['Serves'] ?? '',
        ingredients: data['Ingredients'] ?? '',
        directions: data['Directions'] ?? '',
        youtubeLink: data['YoutubeLink'] ?? '',
        optionalImages: data['OptionalImages'] ?? '',
        createdAt: data['CreatedAt'] ?? '',
      );
    } else {
      return PostModel.empty();
    }
  }
}
