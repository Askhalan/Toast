import 'dart:core';

import 'package:cloud_firestore/cloud_firestore.dart';

class CusineModel {
  String? id;
  String cusName;
  String cusImage;


  CusineModel({
    this.id = '',
    required this.cusName,
     this.cusImage ='',
     
  });

//----------------------------------------- MODEL TO JSON DATA ------------------------------------

  Map<String, dynamic> tojson() => {
        'Id': id,
        'Name': cusName,
        'Image': cusImage,
      };

  static CusineModel empty() => CusineModel(
      cusName: '',
     
);

//------------------------------------ CONSTRUCTOR WHICH JSON TO MODEL -----------------------------

  factory CusineModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;
      return CusineModel(
          id: document.id,
          cusName: data['Name'] ?? '',
          cusImage: data['Image'] ?? '',);
    } else {
      return CusineModel.empty();
    }
  }
}
