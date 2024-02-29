import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/features/admin/1-navigation/screen/scn_navigaton_bar.dart';
import '../../../utils/popups/snackbars.dart';

class AdminLoginController extends GetxController {
  static AdminLoginController get instance => Get.find();

//------------ Variables ------------

  final email = TextEditingController();
  final password = TextEditingController();
  final loginFormKey = GlobalKey<FormState>();

//------------ Methods ------------
  login() async {
    try {

      //Starting the Loading
      // JFullScreenLoaders.openLoadingDialog('We are processing your information', JImages.loading);

      // Validating the form
      // if (!loginFormKey.currentState!.validate()) {
      //    JFullScreenLoaders.stopLoading();
      //   return;
      // }

      // await AuthenticationRepository.instance
      //     .loginUserWithEmail(email.text.trim(), password.text.trim());

      // Get.offAll(() => const Dashboard());
      Get.offAll(() =>  AScnNavigationBar());
    } catch (e) {
      JMessages.snackbarerror(title: 'Error', message: e.toString());
    }
  }
}


class Dashboard2 extends StatefulWidget {
  const Dashboard2({super.key});

  @override
  State<Dashboard2> createState() => _Dashboard2State();
}

class _Dashboard2State extends State<Dashboard2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SingleChildScrollView(
  // child:  ,
),
    );
  }
}



