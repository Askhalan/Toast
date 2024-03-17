import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/features/user/social/controller/search_controller.dart';
import 'package:unicons/unicons.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/devices/device_utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../../../web/widgets/gap.dart';

class JSearchbarContainer extends StatelessWidget {
  
    JSearchbarContainer({
    super.key, required this.text, this.icon=UniconsLine.search,  this.showBackground = true,  this.showBorder = true,
  });
  final ExploreSearchController searchController = Get.find();
 final String text;
 final IconData? icon;
 final bool showBackground , showBorder;
  @override
  Widget build(BuildContext context) {
    final isDark = JHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:  JmSize.defaultSpace),
      child: GestureDetector(
        onTap: (){
          searchController.startSearch();
        },
        child: Container(width: JDeviceUtil.getScreenWidth(context),
        padding: const EdgeInsets.all(JmSize.md),
        decoration: BoxDecoration(
          color: showBackground ? isDark ?  JColor.dark : JColor.light : JColor.transperent,
          border: showBackground ? Border.all(color: JColor.darkGrey):null,
          borderRadius: BorderRadius.circular(JSize.borderRadXl),),
          child: Row(
            children: [
              Icon(icon ,color: JColor.darkGrey,),
              const JGap(w: JmSize.spaceBtwItems,),
              Text(text,style: Theme.of(context).textTheme.bodySmall,)
            
            ],
          ),
        ),
      ),
    );
  }
}
