import 'package:flutter/material.dart';
import 'package:toast/utils/helpers/helper_functions.dart';
import 'package:unicons/unicons.dart';

import '../../../../../../common/app/widgets/appbar/appbar.dart';
import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/devices/device_utility.dart';

class GrocesoryAppBar extends StatelessWidget {
  const GrocesoryAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark =JHelperFunctions.isDarkMode(context);
    return JAppbar(
      title: Text(
        JTexts.exploreAppBarTitle,
        style: Theme.of(context)
            .textTheme
            .headlineMedium!
            .copyWith(fontSize: 22, color: JColor.white),
      ),
      actions: [
            Container(
              width: JDeviceUtil.getAppBarHeight() * 0.7,
              height: JDeviceUtil.getAppBarHeight() * 0.7,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(JSize.borderRadSm),
                  color:isDark ? JColor.darkGrey : JColor.white),
              child: const Icon(UniconsLine.plus))
      ],
    );
  }
}
