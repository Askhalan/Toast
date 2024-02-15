// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/devices/device_utility.dart';


class JAppbar extends StatelessWidget implements PreferredSizeWidget {
   JAppbar({super.key,  this.centerTitle = false, this.title, this.actions});
  final bool centerTitle;
  final Widget? title ;
  List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: JmSize.md),
      child: AppBar(automaticallyImplyLeading: false,
      title: title,
      centerTitle: centerTitle,
      actions: actions
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(JDeviceUtil.getAppBarHeight());
}


