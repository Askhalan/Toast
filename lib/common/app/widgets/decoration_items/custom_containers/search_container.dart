import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/devices/device_utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../../../web/widgets/gap.dart';

class JSearchbarContainer extends StatelessWidget {
  
   const JSearchbarContainer({
    super.key, required this.text, this.icon=UniconsLine.search,  this.showBackground = true,  this.showBorder = true,
  });
 final String text;
 final IconData? icon;
 final bool showBackground , showBorder;
  @override
  Widget build(BuildContext context) {
    final isDark = JHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:  JmSize.defaultSpace),
      child: Container(width: JDeviceUtil.getScreenWidth(context),
      padding: EdgeInsets.all(JmSize.md),
      decoration: BoxDecoration(
        color: showBackground ? isDark ?  JColor.dark : JColor.light : JColor.transperent,
        border: showBackground ? Border.all(color: JColor.darkGrey):null,
        borderRadius: BorderRadius.circular(JSize.borderRadXl),),
        child: Row(
          children: [
            Icon(icon ,color: JColor.darkGrey,),
            JGap(w: JmSize.spaceBtwItems,),
            Text(text,style: Theme.of(context).textTheme.bodySmall,)
    
          ],
        ),
      ),
    );
  }
}
