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
      };

  static UserModel empty() => UserModel(
      username: '',
      email: '',
      firstName: '',
      lastName: '',
      gender: '',
      profilePic: '');

  // static UserModel fromDb(Map<String, dynamic>? value) => UserModel(
  //       id: value!['id'],
  //       name: value['name'],
  //       username: value['username'],
  //       email: value['email'],

  //     );

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
          profilePic: '');
    } else {
      return UserModel.empty();
    }
  }
}
