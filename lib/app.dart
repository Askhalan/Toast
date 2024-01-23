import 'package:flutter/material.dart';
import 'features/admin/dashboard/screens/dashboard.dart';
import 'features/admin/ingredients_management/screens/ingeridentsmanagement.dart';
import 'features/admin/login/screens/admin_login.dart';
import 'utils/theme/theme.dart';

class Toast extends StatelessWidget {
  const Toast({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: JAppTheme.lightTheme,
      darkTheme: JAppTheme.darkTheme,

      //  home:  ALoginScn(),
      // home: const Dashoard(),
      home: const IngeridentsManagement(),
    );
  }
}
 