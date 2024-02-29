import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:toast/features/user/social/models/categeory_model.dart';
import 'package:toast/features/user/social/models/post_model.dart';
import 'package:toast/utils/exceptions/firebase_exceptions.dart';
import 'package:toast/utils/exceptions/format_exceptions.dart';
import 'package:toast/utils/exceptions/platform_exceptions.dart';

class CategeoryRepository extends GetxController {
  static CategeoryRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

//------------------------------------------ FUNCTION TO FETCH ALL CATEGEORY --------------------------------------------

  Future<List<CategeoryModel>> getAllCategeory() async {
    try {
      final snapshot = await _db.collection('categeory').get();

      final result = snapshot.docs
          .map((document) => CategeoryModel.fromSnapshot(document))
          .toList();
      return result;
    } on FirebaseException catch (e) {
      throw JFirebaseException(e.code).message;
    } on JFormatException catch (_) {
      throw const JFormatException();
    } on JPlatformException catch (e) {
      throw JPlatformException(e.code).message;
    } catch (e) {
      throw 'something went wrong . Please try again';
    }
  }

//-------------------------------------------- FUNCTION TO UPLOAD ANY IMAGE --------------------------------------------

  updateSingleField(Map<String, dynamic> json) async {
    try {
      await _db.collection("categeory").doc().update(json);
    } on FirebaseException catch (e) {
      throw JFirebaseException(e.code).message;
    } on JFormatException catch (_) {
      throw const JFormatException();
    } on JPlatformException catch (e) {
      throw JPlatformException(e.code).message;
    } catch (e) {
      throw 'something went wrong . Please try again';
    }
  }
//-------------------------------------------- FUNCTION TO UPLOAD ANY IMAGE --------------------------------------------

  Future<String> uploadImage(String path, XFile image) async {
    try {
      final ref = FirebaseStorage.instance.ref(path).child(image.name);
      await ref.putFile(File(image.path));
      final url = await ref.getDownloadURL();
      return url;
    } on FirebaseException catch (e) {
      throw JFirebaseException(e.code).message;
    } on JFormatException catch (_) {
      throw const JFormatException();
    } on JPlatformException catch (e) {
      throw JPlatformException(e.code).message;
    } catch (e) {
      throw 'something went wrong . Please try again';
    }
  }

  //-------------------------------------------- FUNCTION POST CATEGEORY WISE -------------------------------------------
  
  Future<List<PostModel>> getPostsInCategeory (String categeory) async {
    try {
      final snapshot = await _db.collection('posts').where('Categeory' , isEqualTo:categeory).get();
      return snapshot.docs.map((e) => PostModel.fromSnapshot(e)).toList();

    } on FirebaseException catch (e) {
      throw JFirebaseException(e.code).message;
    } on JFormatException catch (_) {
      throw const JFormatException();
    } on JPlatformException catch (e) { 
      throw JPlatformException(e.code).message;
    } catch (e) {
      throw 'something went wrong . Please try again ';
    }
  }
  

}
