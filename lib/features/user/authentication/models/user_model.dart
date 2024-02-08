import 'dart:core';

class UserModel {
  String id;
  final String name;
  final String username;
  final String email;
  // final String password;

  UserModel({
    required this.username,
    required this.email,
    // required this.password,
    this.id = '',
    required this.name,
  });

  Map<String, dynamic> tojson() => {
        'id': id,
        'name': name,
        'username': username,
        'email': email,
        // 'password': password
      };

  static UserModel fromDb(Map<String, dynamic>? value) => UserModel(
        id: value!['id'],
        name: value['name'],
        username: value['username'],
        email: value['email'],
        // password: value['password'],
      );
}
