import 'dart:core';

import 'package:cloud_firestore/cloud_firestore.dart';

class CategeoryModel {
  String? id;
  String catName;
  String catImage;


  CategeoryModel({
    this.id = '',
    required this.catName,
     this.catImage ='',
     
  });

//----------------------------------------- MODEL TO JSON DATA ------------------------------------

  Map<String, dynamic> tojson() => {
        'Id': id,
        'Name': catName,
        'Image': catImage,
      };

  static CategeoryModel empty() => CategeoryModel(
      catName: '',
     
);

//------------------------------------ CONSTRUCTOR WHICH JSON TO MODEL -----------------------------

  factory CategeoryModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;
      return CategeoryModel(
          id: document.id,
          catName: data['Name'] ?? '',
          catImage: data['Image'] ?? '',);
    } else {
      return CategeoryModel.empty();
    }
  }
}
