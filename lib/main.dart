import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:toast/features/admin/login/contollers/auth_controller.dart';
import 'package:toast/firebase_options.dart';
import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
          )
      .then((value) => Get.put(AuthController()));

  runApp(const Toast());
}
 