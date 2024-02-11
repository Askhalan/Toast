import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:toast/features/user/1%20authentication/screens/login/scn_login.dart';
import 'package:toast/features/user/1%20authentication/screens/on_boarding/scn_onboarding.dart';
import 'package:toast/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:toast/utils/exceptions/format_exceptions.dart';
import 'package:toast/utils/exceptions/platform_exceptions.dart';
import '../../features/admin/login/screens/admin_login.dart';
import '../../utils/exceptions/firebase_exceptions.dart';




class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  void screenRedirect() async {
    if (kIsWeb) {
      Get.offAll(() => ALoginScn());
    } else {
      deviceStorage.writeIfNull('isFirstTime', true);
      deviceStorage.read('isFirstTime') != true
          ? Get.offAll(() => const ScnLogin())
          : Get.offAll(() => const ScnOnBoarding());
    }
  }

  Future<UserCredential> registerUserWithEmail(
      String email, String password) async {
    try { 
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw JFirebaseAuthException(e.code).message;
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



  Future loginUserWithEmail(
      String email, String password) async {
    try { 
      return await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw JFirebaseAuthException(e.code).message;
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


  

//      Future<User?> signUpWithEmail ( String email , String password) async {
//     try{
//       UserCredential credential = await _auth.
//       createUserWithEmailAndPassword(email: email, password: password);
//       return credential.user;
//     }
//     catch (e) {
//       print('Some error occured');
//     }
//     return null;
//    }


// Future<User?> signInWithEmail ( String email , String password) async {


//     try{
//       UserCredential credential = await _auth.
//       signInWithEmailAndPassword(email: email, password: password);
//       return credential.user;
//     }
//     catch (e) {
//       print('Some error occured');
//     }
//     return null;
//    }
}
