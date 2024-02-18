import 'package:flutter/material.dart';
import 'package:glass/glass.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/devices/responsive.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        //------------------------------ BANNER ------------------------------
        Container(
            width: double.infinity,
            height: 230,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/TempFoodImages/pexels-valeria-boltneva-842571.jpg'),fit: BoxFit.cover), 
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
    
                //--------------------------- EDIT PROFILE BUTTON -------------------------
    
                GestureDetector(
                  child: SizedBox(
                    height: 40,
                    width: 120,
                    child: Center(
                        child: Text(
                      JTexts.editProfile,
                      style: Theme.of(context).textTheme.titleSmall,
                    )),
                  ).asGlass(
                      tintColor: isDark
                          ? JColor.darkGrey.withOpacity(0.5)
                          : JColor.lightGrey.withOpacity(0.5),
                      clipBorderRadius:
                          BorderRadius.circular(JSize.borderRadLg)),
                ),
    
                //------------------------------ PROFILE PIC ------------------------------
    
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius:
                          BorderRadius.circular(JSize.borderRadLg),
                      image: const DecorationImage(image: AssetImage(''))),
                ),
    
                //---------------------------- SETTINGS BUTTON ----------------------------
    
                SizedBox(
                  height: 40,
                  width: 120,
                  child: Center(
                      child: Text(
                    JTexts.settings,
                    style: Theme.of(context).textTheme.titleSmall,
                  )),
                ).asGlass(
                    tintColor: isDark
                        ? JColor.darkGrey.withOpacity(0.5)
                        : JColor.lightGrey.withOpacity(0.5),
                    clipBorderRadius:
                        BorderRadius.circular(JSize.borderRadLg)),
              ],
            ),
          ),
        )
      ],
    );
  }
}
