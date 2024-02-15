import 'package:flutter/material.dart';
import 'package:toast/utils/constants/sizes.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/devices/device_utility.dart';

class UserProfileIcon extends StatelessWidget {
  const UserProfileIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: JDeviceUtil.getAppBarHeight()*0.7,height: JDeviceUtil.getAppBarHeight()*0.7,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(JSize.borderRadSm),color: JColor.primary),
      // child: Image(image: AssetImage('')),
    );
  }
}