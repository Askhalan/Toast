import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:toast/data/repository/user_repository.dart';
import 'package:toast/features/admin/1-navigation/screen/scn_navigaton_bar.dart';
import 'package:toast/features/authentication/screens/login/scn_login.dart';
import 'package:toast/features/authentication/screens/on_boarding/scn_onboarding.dart';
import 'package:toast/features/user/social/screens/navigation_menu/screens/nav_menu.dart';
import 'package:toast/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:toast/utils/exceptions/format_exceptions.dart';
import 'package:toast/utils/exceptions/platform_exceptions.dart';
import '../../utils/exceptions/firebase_exceptions.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  static final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;
  User? get authUser => _auth.currentUser;

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

//-------------------------------------------- SCREEN REDIRECT Fn -------------------------------------------

  void screenRedirect() async {
    if (kIsWeb) {
      
      Get.offAll(() => AScnNavigationBar());
    } else {

      deviceStorage.writeIfNull('isFirstTime', true);
      deviceStorage.read('isFirstTime') != true
          ? deviceStorage.read('isLogedin') == true
              ? Get.offAll(() => const NavigationMenu()) 
              : Get.offAll(() => ScnLogin())
          : Get.offAll(() => const ScnOnBoarding());
    }
  }

//----------------------------------------------- REGISTER USER --------------------------------------------

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

//-------------------------------------------- REGISTER USER -------------------------------------------

  Future<UserCredential> signinWithGoogle() async {
    try {
      //--- gets the popup of all logged in gmail accounts
      final GoogleSignInAccount? userAccount = await GoogleSignIn().signIn();

      //--- Obtin the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await userAccount?.authentication;

      //--- create new credentails
      final credentials = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);

      //--- Once signed in , return the userCredentails
      return await _auth.signInWithCredential(credentials);
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

//-------------------------------------------- LOGIN USER -------------------------------------------

  Future loginUserWithEmail(String email, String password) async {
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

//-------------------------------------------- REAUTHENTICATE USER -------------------------------------------

  Future reAuthenticateEmailAndPasswordUser(
      String email, String password) async {
    try {
      AuthCredential credential =
          EmailAuthProvider.credential(email: email, password: password);
      await _auth.currentUser!.reauthenticateWithCredential(credential);
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

//-------------------------------------------- DELETE USER -------------------------------------------

  Future deleteAccount() async {
    try {
      await UserRepository.instance.removeUserRecord(_auth.currentUser!.uid);
      await _auth.currentUser?.delete();
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

  //-------------------------------------------- LOGOUT USER -------------------------------------------

  Future logoutUser() async {
    try {
      deviceStorage.write('isLogedin', false);

      await FirebaseAuth.instance.signOut();
       print('printing from logoutUser -- from AuthRepository ++++---------------${deviceStorage.read('isLogedin')}');
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
}
