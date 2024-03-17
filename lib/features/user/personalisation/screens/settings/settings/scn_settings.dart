// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/features/user/personalisation/controller/updater_profile_controller.dart';
import 'package:toast/features/user/personalisation/screens/settings/settings/d_setting_body.dart';
import 'package:toast/features/user/personalisation/screens/settings/settings/d_settings_header.dart';

class Settings extends StatelessWidget {
   Settings({super.key});
final controller = Get.put(UpdateUserController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            //------------------------------------------- SETTINGS HEADER -------------------------------------------

            SettingsHeader(),

            //-------------------------------------------- SETTINGS BODY --------------------------------------------

            SettingsBody()
          ],
        ),
      ),
    );
  }
}

