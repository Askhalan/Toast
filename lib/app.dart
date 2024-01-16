import 'package:flutter/material.dart';
// import 'features/Splash/splash_scn.dart';
import 'features/admin/login/screens/admin_login.dart';
import 'utils/theme/theme.dart';

class Toast extends StatelessWidget {
  const Toast({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: JAppTheme.lightTheme,
      darkTheme: JAppTheme.darkTheme,
      home: const ALoginScn(),
    );
  }
}