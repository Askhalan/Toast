// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glass/glass.dart';
import 'package:toast/common/app/widgets/loaders/shimmers/shimmer_effect.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/features/user/personalisation/controller/user_controller.dart';
import 'package:toast/features/user/personalisation/screens/settings/edit_profile/w_profile_edit_button.dart';
import 'package:toast/features/user/personalisation/screens/settings/settings/w_user_profile_image.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/image_strings.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:unicons/unicons.dart';

class SettingsProfileInformation extends StatelessWidget {
  SettingsProfileInformation({
    super.key,
  });
  final UserController controller = Get.find();
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

                Stack(
                  children: [
                    SizedBox(
                      height: 90,width: 90,
                      child: Obx(() {
                        final networkImage = controller.user.value.profilePic;
                        final image = networkImage.isNotEmpty
                            ? networkImage
                            : JImages.defaultProfileImage;
                        return
                         controller.imageUploading.value
                        ? const JShimmerEffect(width: 90, height: 90) 
                        : 
                        UserProfileImage(image: image,isNetworkImage:networkImage.isNotEmpty,);
                      }),
                    ),
                     Positioned(
            bottom: -6,
            right: -6,
            child: IconButton(
                icon: const Icon(
                  UniconsLine.camera_plus,
                  color: JColor.lightGrey,
                  size: 30,
                ).asGlass(clipBorderRadius: BorderRadius.circular(5)),
                onPressed: () {
                  controller.uploadUserProfilePicture();
                }),
          ),
                  ],
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

