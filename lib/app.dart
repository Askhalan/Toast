

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/bindings/general_bindings.dart';
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
      initialBinding: GeneralBindings(),
      home: Container(),
    );
  }
}

 