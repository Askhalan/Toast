import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'features/admin/user_management/screens/user_management.dart';
import 'utils/theme/theme.dart';

class Toast extends StatelessWidget {
  const Toast({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: JAppTheme.lightTheme,
      darkTheme: JAppTheme.darkTheme,

      //  home:  ALoginScn()
      // home: const Dashoard(),
      // home: const IngeridentsManagement(),
      // home: const PostManagement(),
      home: const UserManagement(),

      // home:  OnBoarding(),
    );
  }
}
 

 