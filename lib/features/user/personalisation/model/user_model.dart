import 'dart:core';

import 'package:cloud_firestore/cloud_firestore.dart';


class UserModel {
  String id;
  String firstName;
  String lastName;
  String gender;
  String profilePic;
  String username;
  String email;

  UserModel({
    this.id = '',
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.username,
    required this.email,
    required this.profilePic,
  });

  Map<String, dynamic> tojson() => {
        'Id': id,
        'FirstName': firstName,
        'LastName': lastName,
        'Username': username,
        'Email': email,
        'Gender': gender,
         'ProfilePic': '',
      };

  static UserModel empty() => UserModel(
      username: '',
      email: '',
      firstName: '',
      lastName: '',
      gender: '',
      profilePic: '');

  static List<String> nameParts(fullName)=> fullName.split(" ");

  static String generateusername(fullName){
    List<String> nameParts = fullName.split(" ");
    String firstName = nameParts[0].toLowerCase();
    String lastName = nameParts.length > 1 ? nameParts[1].toLowerCase() : '';

    String camelCaseUsername = "$firstName$lastName";
    String usernameWithPrefix = "cwt_$camelCaseUsername";
    return usernameWithPrefix;
  }


  factory UserModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;
      return UserModel(
          id: document.id,
          username: data['Username'] ?? '',
          email: data['Email'] ?? '',
          firstName: data['FirstName'] ?? '',
          lastName: data['LastName'] ?? '',
          gender: data['Gender'] ?? '',
          profilePic:  data['ProfilePic'] ?? '');
    } else {
      return UserModel.empty();
    }
  }
}
