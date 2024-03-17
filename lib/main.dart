// ignore_for_file: unused_local_variable

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/instance_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:toast/features/user/grocesory/models/grocesoryModel.dart';
import 'package:toast/firebase_options.dart';
import 'app.dart';
import 'data/repository/auth_repository.dart';

void main() async {
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();
  //---------------------------- HIVE ----------------------------

  await Hive.initFlutter();
 if(!Hive.isAdapterRegistered(GrocesoryModelAdapter().typeId)){
  Hive.registerAdapter(GrocesoryModelAdapter());
 }
  

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);


  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((FirebaseApp value) => Get.put(AuthenticationRepository()));

  runApp(const Toast());
}
