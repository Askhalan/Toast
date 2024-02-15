import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/devices/device_utility.dart';

class PageIndicatorWithTotal extends StatelessWidget {
  const PageIndicatorWithTotal({super.key, required this.pageNo, required this.totalPageNo});
  final String pageNo;
  final String totalPageNo;

  @override
  Widget build(BuildContext context) {
    return Container( width: JDeviceUtil.getAppBarHeight()*0.9,height: JDeviceUtil.getAppBarHeight()*0.6,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(JSize.borderRadSm),
      color: JColor.darkGrey
      ),
      child: Center(child: Text('$pageNo/$totalPageNo',style: Theme.of(context).textTheme.bodyLarge,)),
    );
  }
}