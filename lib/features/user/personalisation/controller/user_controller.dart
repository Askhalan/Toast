// ignore_for_file: prefer_const_constructors, avoid_print

import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:toast/data/repository/auth_repository.dart';
import 'package:toast/data/repository/user_repository.dart';
import 'package:toast/data/services/mail_sevices.dart';
import 'package:toast/features/authentication/screens/login/scn_login.dart';
import 'package:toast/features/user/personalisation/model/user_model.dart';
import 'package:toast/features/user/personalisation/screens/settings/settings/scn_reauthenticate_user.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/image_strings.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/constants/text_strings.dart';
import 'package:toast/utils/popups/full_screen_loaders.dart';
import 'package:toast/utils/popups/snackbars.dart';
import 'package:url_launcher/url_launcher.dart';


class UserController extends GetxController {
  static UserController get instance => Get.find();
  final userRepository = Get.put(UserRepository());
  final mailServices = Get.put(MailServices());
  


  
    final _db = FirebaseFirestore.instance;
  final profileLoading = false.obs;
  RxBool imageUploading = false.obs;
  RxBool bannerImageUploading = false.obs;
  Rx<UserModel> user = UserModel.empty().obs;
  Rx<UserModel> otherUser = UserModel.empty().obs;
  final email = TextEditingController();
  final password = TextEditingController();
  final reAuthFormKey = GlobalKey<FormState>();



  @override
  void onInit() {
    super.onInit();
    fetchUserRecord();
  }

  //----------------------------------------- FETCH USER DETAILS ------------------------------------
  
  Future<void> fetchUserRecord() async {
    try {
      profileLoading.value = true;
      final user = await userRepository.fetchUserDetails();
      this.user(user);
    } catch (e) {
      user(UserModel.empty());
    } finally {
      profileLoading.value = false;
    }
  }

   //----------------------------------------- FETCH USER WITH UID ------------------------------------
  
Future<UserModel> fetchUserRecordWithUid(String uid) async {
  try {
    profileLoading.value = true;
    final user = await userRepository.fetchAnyUserDetails(uid);
    otherUser(user);
    return user;
  } catch (e) {
    otherUser(UserModel.empty());
    throw e;
  } finally {
    profileLoading.value = false;
  }
}


  //---------------------------- SAVE USER RECORD FROM ANY REGISTRATION PROVIDER ----------------------

  Future<void> saveUserRecord(UserCredential? userCredential) async {
    try {
      if (userCredential != null) {
        final nameParts =
            UserModel.nameParts(userCredential.user!.displayName ?? '');
        final username =
            UserModel.generateusername(userCredential.user!.displayName ?? '');

        //Map data
        final user = UserModel(
            id: userCredential.user!.uid,
            firstName: nameParts[0],
            lastName:
            nameParts.length > 1 ? nameParts.sublist(1).join(' ') : '',
            gender: '',
            username: username,
            email: userCredential.user!.email ?? '',
            profilePic:  userCredential.user!.photoURL ?? '', 
            bannerPic: '', 
            bio: '');

        //Save User Record

        await userRepository.saveUserRecord(user);
      }
    } catch (e) {
      JMessages.snackbarerror(
          title: 'Error', message: 'Something went wrong: $e');
    } finally {}
  }

  //----------------------------------------- UPLOAD PROFILE PIC ------------------------------------

  Future<void> uploadUserProfilePicture() async {
    try {
      final image = await ImagePicker()
          .pickImage(source: ImageSource.gallery, imageQuality: 70);
      if (image != null) {
        imageUploading.value = true;
        final imageUrl =
            await userRepository.uploadImage('Users/Images/Profile/', image);
        Map<String, dynamic> json = {'ProfilePic': imageUrl};
        await userRepository.updateSingleField(json);
        user.value.profilePic = imageUrl;
        user.refresh();
        JMessages.snackbarSuccess(
            title: 'Congratulation',
            message: 'Your Profile Image has been updated');
      }
    } catch (e) {
      JMessages.snackbarerror(
          title: 'Error', message: 'Something went wrong: $e');
    } finally {
      imageUploading.value = false;
    }
  }

    //----------------------------------------- UPLOAD BANNER PIC ------------------------------------

  Future<void> uploadUserBannerPicture() async {
    try {
      final image = await ImagePicker()
          .pickImage(source: ImageSource.gallery, imageQuality: 70);
      if (image != null) {
        bannerImageUploading.value = true;
        final imageUrl =
            await userRepository.uploadImage('Users/Images/Profile/', image);
        Map<String, dynamic> json = {'BannerPic': imageUrl};
        await userRepository.updateSingleField(json);
        user.value.bannerPic = imageUrl;
        user.refresh();
        JMessages.snackbarSuccess(
            title: 'Congratulation',
            message: 'Your Banner Image has been updated');
      }
    } catch (e) {
      JMessages.snackbarerror(
          title: 'Error', message: 'Something went wrong: $e');
    } finally {
      bannerImageUploading.value = false;
    }
  }

  //----------------------------------------- DELETE ACCOUNT WARNING ------------------------------------

  void deleteAccountWarningPopup() {
    Get.defaultDialog(
        contentPadding: const EdgeInsets.all(JmSize.md),
        title: 'Delete Account',
        middleText: JTexts.accountDeleteWarningMessage,
        confirm: ElevatedButton(
            onPressed: () => deleteUserAccount(),
            style: ElevatedButton.styleFrom(
                backgroundColor: JColor.error,
                side: BorderSide(color: JColor.error)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: JmSize.lg),
              child: Text('Delete'),
            )),
        cancel: OutlinedButton(
            onPressed: () => Navigator.of(Get.overlayContext!).pop(),
            child: Text('Cancel')));
  }

//----------------------------------------- LOGOUT ACCOUNT WARNING ------------------------------------

  void logoutUserWarningPopup() {
    Get.defaultDialog(
        contentPadding: const EdgeInsets.all(JmSize.md),
        title: 'Are you sure, to logout',
        middleText: JTexts.accountDeleteWarningMessage,
        confirm: ElevatedButton(
            onPressed: () => logoutCurrentUser(),
            style: ElevatedButton.styleFrom(
                backgroundColor: JColor.error,
                side: BorderSide(color: JColor.error)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: JmSize.lg),
              child: Text('Logout'),
            )),
        cancel: OutlinedButton(
            onPressed: () => Navigator.of(Get.overlayContext!).pop(),
            child: Text('Cancel')));
  }

//----------------------------------------- LOGOUT ACCOUNT METHOD ------------------------------------

  logoutCurrentUser() async {
    try {
      final auth = AuthenticationRepository.instance;
      auth.logoutUser();
      Get.offAll(() => ScnLogin());
    } catch (e) {
      JMessages.snackbarerror(title: 'Error', message: e.toString());
    }
  }

  //----------------------------------------- DELETE ACCOUNT METHOD ------------------------------------

  deleteUserAccount() async {
    try {
      final auth = AuthenticationRepository.instance;
      final provider =
          auth.authUser!.providerData.map((e) => e.providerId).first;
      if (provider == 'password') {
        Get.to(() => ReAuthUSer());
      }
    } catch (e) {
      JMessages.snackbarerror(title: 'Error', message: e.toString());
    }
  }

//----------------------------------------- RE-AUTHENTICATE USER METHOD -----------------------------------

  Future reAuthenticateEmailAndPassworduser() async {
    try {
      JFullScreenLoaders.openLoadingDialog(
          'We are verifiying your information', JImages.loading);
      if (!reAuthFormKey.currentState!.validate()) {
        JFullScreenLoaders.stopLoading();
        return;
      }
      await AuthenticationRepository.instance
          .reAuthenticateEmailAndPasswordUser(email.text, password.text);
      await AuthenticationRepository.instance.deleteAccount();
      await deleteCurrentuserPosts();
      log('Currrent User Delete Post function Has been Called -----');
      Get.off(() => ScnLogin());
    } catch (e) {
      JMessages.snackbarerror(title: 'Error', message: e.toString());
    }
  }


//----------------------------------------- WRITE APP REVIEW -----------------------------------


Future<void> writeFeedback() async {
  final Uri emailUrl = Uri(
    scheme: 'mailto',
    path: 'askhalan.aj@gmail.com',
    queryParameters: {
      'subject': 'Feedback About Toast',
    },
  );

  if (await canLaunchUrl(emailUrl)) {
    await launchUrl(emailUrl);
  } else {
    throw 'Could not launch email client';
  }
}

//------------------------------------------------- DELETE CURRENT USER POST ---------------------------------

Future<void> deleteCurrentuserPosts() async {
  try {
    log('Printing from the deleting function');
    // Get a reference to the Firestore collection
    CollectionReference usersCollection = _db.collection('posts');

    // Query the documents that match the specific UID
    QuerySnapshot querySnapshot = await usersCollection.where('UserId', isEqualTo: user.value.id).get();

    // Create a batch
    WriteBatch batch = _db.batch();

    // Add each document to the batch for deletion
    for (var doc in querySnapshot.docs) {
      batch.delete(doc.reference);
    }

    // Commit the batch to delete all the documents in one operation
    await batch.commit();
    
    print('All posts of ${user.value.username} has deleted successfully');
  } catch (e) {
    print('Error deleting documents: $e'); 
  }
}

}
