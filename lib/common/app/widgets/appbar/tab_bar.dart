 import 'package:flutter/material.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/devices/device_utility.dart';
import 'package:toast/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/sizes.dart';

class JTabbar extends StatelessWidget implements PreferredSizeWidget {
  const JTabbar({super.key, required this.tabs});
final List<Widget> tabs ;
  @override
  Widget build(BuildContext context) {
    final isDark = JHelperFunctions.isDarkMode(context);
    return Material(
      color: isDark  ? JColor.black :JColor.white  ,
      child: SizedBox(
        height: 40,
        child: TabBar(
          tabs: tabs,
          indicatorColor: JColor.primary,
          labelColor:  isDark  ? JColor.white :JColor.primary ,
          unselectedLabelColor: JColor.darkGrey,
          indicator: BoxDecoration(
                  color: JColor.secondary,borderRadius: BorderRadius.circular(JmSize.borderRadiusMd)
                ),
                indicatorSize:TabBarIndicatorSize.tab ,
        ),
      ),
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(JDeviceUtil.getAppBarHeight()*0.8);
}