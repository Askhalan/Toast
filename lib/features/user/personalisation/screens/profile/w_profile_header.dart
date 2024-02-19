import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glass/glass.dart';
import 'package:toast/features/user/personalisation/screens/settings/settings/scn_settings.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/constants/text_strings.dart';
import 'package:toast/utils/devices/responsive.dart';
import 'package:toast/utils/helpers/helper_functions.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = JHelperFunctions.isDarkMode(context);
    return Stack(
      clipBehavior: Clip.none,
      children: [
        //------------------------------ BANNER ------------------------------
        Container(
            width: double.infinity,
            height: 230,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      'assets/images/TempFoodImages/pexels-valeria-boltneva-842571.jpg'),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(JSize.borderRadXl),
                  bottomRight: Radius.circular(JSize.borderRadXl)),
            )),
        Positioned(
          bottom: -50,
          child: SizedBox(
            width: JFluid.percentWidth(context: context, percent: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //------------------------------ PROFILE PIC ------------------------------

                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(JSize.borderRadLg),
                      image: const DecorationImage(image: AssetImage(''))),
                ),
              ],
            ),
          ),
        ),
        
        //---------------------------- SETTINGS BUTTON ----------------------------

        Positioned(
          right: JmSize.defaultSpace / 2,
          top: JmSize.defaultSpace / 2,
          child: GestureDetector(
            onTap: () {
              Get.to(() => const Settings());
            },
            child: Container(
              color: JColor.secondary,
              height: 40,
              width: 120,
              child: Center(
                  child: Text(
                JTexts.settings,
                style: Theme.of(context).textTheme.titleSmall,
              )),
            ).asGlass(
                tintColor: isDark ? JColor.darkGrey : JColor.lightGrey,
                clipBorderRadius: BorderRadius.circular(JSize.borderRadLg)),
          ),
        ),
      ],
    );
  }
}
