import 'package:flutter/material.dart';
import 'package:glass/glass.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/features/user/personalisation/controller/user_controller.dart';
import 'package:toast/features/user/personalisation/screens/settings/edit_profile/w_profile_edit_button.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:unicons/unicons.dart';

class SettingsProfileInformation extends StatelessWidget {
  SettingsProfileInformation({
    super.key,
  });
  final controller = UserController.instance;
  @override
  Widget build(BuildContext context) {
    // final isDark = JHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.all(JmSize.defaultSpace / 2),
      child:

          //---------------------------------- MAIN BACKGROUND CONTAINER -------------------------------

          Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(JmSize.borderRadiusLg),
              color: Colors.white.withOpacity(0.3),
            ),
            padding: const EdgeInsets.all(JmSize.defaultSpace / 2),
            child: Row(
              children: [
                //------------------------------------- PROFILE PIC ------------------------------------

                Container(
                  // padding: const EdgeInsets.only(bottom:JmSize.defaultSpace /4),
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(JSize.borderRadLg),
                      image: const DecorationImage(image: AssetImage('assets/images/defaultUserImages.jpeg'))
                      ),
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(icon:const Icon(UniconsLine.camera_plus,size: 30 ,),onPressed: (){

                          }),
                        ],
                      ),
                ),
                const JGap(
                  w: JmSize.spaceBtwSections,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //------------------------------------- NAME -------------------------------------

                    Text(
                      '${controller.user.value.firstName} ${controller.user.value.lastName}',
                      style: Theme.of(context).textTheme.headlineMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),

                    //----------------------------------- USERNAME -----------------------------------

                    const JGap(h: JmSize.spaceBtwItems / 3),
                    Text(controller.user.value.username,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontSize: 20)),
                  ],
                ),
              ],
            ),
          ).asGlass(),

          //-------------------------------------------- EDIT BUTTON -----------------------------------

          const ProfileEditButton(),
        ],
      ),
    );
  }
}

