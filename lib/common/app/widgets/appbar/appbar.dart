import 'package:flutter/material.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/devices/device_utility.dart';

import 'user_profile_icon.dart';

class JAppbar extends StatelessWidget implements PreferredSizeWidget {
   JAppbar({super.key,  this.centerTitle = false, this.title});
  final bool centerTitle;
  final Widget? title ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: JmSize.md),
      child: AppBar(automaticallyImplyLeading: false,
      title: title,
      centerTitle: centerTitle,
      actions: [
        UserProfileIcon()
      ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(JDeviceUtil.getAppBarHeight());
}


