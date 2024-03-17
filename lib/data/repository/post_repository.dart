import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:toast/features/user/social/models/post_model.dart';
import 'package:toast/utils/exceptions/firebase_exceptions.dart';
import 'package:toast/utils/exceptions/format_exceptions.dart';
import 'package:toast/utils/exceptions/platform_exceptions.dart';

class PostRepository extends GetxController {
  static PostRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;
  final userCredential = UserCredential;
  final currentUser = FirebaseAuth.instance.currentUser;

//--------------------------------------------- FUNCTION TO SAVE POST ---------------------------------------------
  savePost(PostModel post) async {
    try {
      await _db.collection("posts").doc().set(post.tojson());
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

  //--------------------------------------------- FUNCTION TO SAVE POST ---------------------------------------------
  
  Future<List<PostModel>> getAllPosts() async {
    try {
      // final snapshot = await _db.collection('posts').where('isFeatured' , isEqualTo: true ).limit(10).get();
      final snapshot = await _db
          .collection('posts')
          .orderBy('CreatedAt', descending: true)
          .get();
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

  //--------------------------------------------- FUNCTION TO FETCH CURRENT USER POSTS ---------------------------------------------
  Future<List<PostModel>> getUserPosts(String uid) async {
    try {
      // final snapshot = await _db.collection('posts').where('isFeatured' , isEqualTo: true ).limit(10).get();
      final snapshot = await _db
          .collection('posts')
          .where('UserId',
              isEqualTo:uid)
          .orderBy('CreatedAt', descending: true)
          .get();
      log('$snapshot');
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

  //------------------------------------------- FUNCTION TO DELETE CURRENT USER ALL POSTS ---------------------------------------------

}

