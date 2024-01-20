
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:toast/features/admin/login/screens/admin_home.dart';
import 'package:toast/utils/constants/colors.dart';

import '../screens/admin_login.dart';

class AuthController extends GetxController{
  //here we created a getx Instance
   static AuthController instance = Get.find();
   // _user is a private variable of User Model (provided by firebase auth)
   late Rx<User?> _user;
   // creating an instance of firebase Auth
   FirebaseAuth auth = FirebaseAuth.instance;
  
  @override
  void onReady(){
    super.onReady();
    _user = auth.currentUser as Rx<User?>;
    _user.bindStream(auth.userChanges());
    ever(_user, (callback) => initialScreen);
  }


  initialScreen(User? user){
    if(user==null){
      Get.offAll(()=>ALoginScn());
    }
    else{
      Get.offAll(()=> AdminHome(email:user.email));
    }
  }


  void login(String email, password) async {
    try{
      await auth.signInWithEmailAndPassword(email: email, password: password);
    }
    catch(e){
      Get.snackbar("Login Failed", 'some error ',
      backgroundColor: JColor.accent,
      snackPosition: SnackPosition.BOTTOM);
    }
  }

  void logout() async {
    await auth.signOut();
  }

}