import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../features/user/authentication/models/user_model.dart';
import '../../utils/exceptions/firebase_exceptions.dart';
import '../../utils/exceptions/format_exceptions.dart';
import '../../utils/exceptions/platform_exceptions.dart';

class UserRepository extends GetxController {

  static UserRepository get instance => Get.find();
  static final _db = FirebaseFirestore.instance;

saveUserRecord(UserModel user)async {
  try {
    await _db.collection("users").doc(user.id).set(user.tojson());
  }
  
  
  on FirebaseException catch (e) {
      throw JFirebaseException(e.code).message;
    } on JFormatException catch (_) {
      throw const JFormatException();
    } on JPlatformException catch (e) {
      throw JPlatformException(e.code).message;
    }
    catch (e) {
      throw 'something went wrong . Please try again';
    }
}

  // static Future createStudent(UserModel value, String docID) async {
  //   final dbData = _db.doc(docID);
  //   UserModel data = UserModel(
  //       id: docID,
  //       name: value.name,
  //       username: value.username,
  //       email: value.email,
  //       password: value.password);
  //   final dataToPass = data.tojson();
  //   await dbData.set(dataToPass);
  // }
}
