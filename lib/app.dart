

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'utils/theme/theme.dart';

// class Toast extends StatelessWidget {
//   const Toast({super.key});

//   @override
//   Widget build(BuildContext context) {
//      Widget Home;
//     //  if (Platform.isAndroid || Platform.isIOS) {
//     //   home = const ScnOnBoarding();
//     // } else if (Platform.isWeb) {
//     //   home = ALoginScn();
//     // } else {
//     //   // Handle other platforms if needed
//     //   home = Container(); // Placeholder widget
//     // }
//    JDeviceUtil.isAndroid ? Home=  ALoginScn()  : Home = const ScnOnBoarding();
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       themeMode: ThemeMode.system,
//       theme: JAppTheme.lightTheme,
//       darkTheme: JAppTheme.darkTheme,



//       home: ? const ScnOnBoarding():ALoginScn() ,
//     );
//   }
// }
 

class Toast extends StatelessWidget {
  const Toast({super.key});

  @override
  Widget build(BuildContext context) {


    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: JAppTheme.lightTheme,
      darkTheme: JAppTheme.darkTheme,
      home: Container(),
    );
  }
}

 