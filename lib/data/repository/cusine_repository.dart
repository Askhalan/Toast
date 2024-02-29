import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:toast/data/repository/auth_repository.dart';
import 'package:toast/features/user/social/models/categeory_model.dart';
import 'package:toast/features/user/social/models/cusine_model.dart';
import 'package:toast/utils/exceptions/firebase_exceptions.dart';
import 'package:toast/utils/exceptions/format_exceptions.dart';
import 'package:toast/utils/exceptions/platform_exceptions.dart';

class CusineRepository extends GetxController{
  static CusineRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;


  Future<List<CusineModel>> getAllCusine() async {
    try{

      final snapshot = await _db.collection('cusine').get();

      final result = snapshot.docs.map((document) => CusineModel.fromSnapshot(document)).toList();

      return result;
     
    }on FirebaseException catch (e) {
      throw JFirebaseException(e.code).message;
    } on JFormatException catch (_) {
      throw const JFormatException();
    } on JPlatformException catch (e) { 
      throw JPlatformException(e.code).message;
    } catch (e) {
      throw 'something went wrong . Please try again';
    }
  }


   updateSingleField(Map<String, dynamic> json) async {
    try {
      await _db
          .collection("cusine")
          .doc()
          .update(json);
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

}