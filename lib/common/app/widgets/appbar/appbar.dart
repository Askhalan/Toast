// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/devices/device_utility.dart';

class JAppbar extends StatelessWidget implements PreferredSizeWidget {
  JAppbar(
      {super.key,
      this.centerTitle = false,
      this.title,
      this.actions,
      this.showBackArrow = false,
      this.leadingIcon,
      this.leadingOnPressed,  this.horizontalpadding =JmSize.md});

  final bool centerTitle;
  final bool showBackArrow;
  final Widget? title;
  final IconData? leadingIcon;
  final VoidCallback? leadingOnPressed;
  List<Widget>? actions;
  final double horizontalpadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:horizontalpadding ),
      child: AppBar(
        automaticallyImplyLeading: false,
        title: title,
        centerTitle: centerTitle,
        actions: actions,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Icons.arrow_back_ios_new))
            : leadingIcon != null
                ? IconButton(
                    onPressed: leadingOnPressed, icon: Icon(leadingIcon))
                : null,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(JDeviceUtil.getAppBarHeight());
}
