import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glass/glass.dart';
import 'package:toast/common/app/widgets/loaders/shimmers/shimmer_effect.dart';
import 'package:toast/features/user/personalisation/controller/user_controller.dart';
import 'package:toast/features/user/personalisation/screens/profile/w_user_banner_pic.dart';
import 'package:toast/features/user/personalisation/screens/settings/settings/scn_settings.dart';
import 'package:toast/features/user/personalisation/screens/settings/settings/w_user_profile_image.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/image_strings.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/devices/responsive.dart';
import 'package:toast/utils/helpers/helper_functions.dart';
import 'package:unicons/unicons.dart';

class ProfileHeader extends StatelessWidget {
  ProfileHeader({
    super.key,
  });
  final controller = UserController.instance;
  @override
  Widget build(BuildContext context) {
    final isDark = JHelperFunctions.isDarkMode(context);
    return Stack(
      clipBehavior: Clip.none,
      children: [
        //-------------------------------- BANNER --------------------------------
        Container(
          width: double.infinity,
          height: 210,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(JSize.borderRadXl),
                bottomRight: Radius.circular(JSize.borderRadXl)),
          ),
          child: Obx(() {
            final networkImage = controller.user.value.bannerPic;
            final image = networkImage.isNotEmpty
                ? networkImage
                : JImages.defaultBannerImage;
            return controller.bannerImageUploading.value
                ? const JShimmerEffect(width: 100, height: 100)
                : UserBannerImage(
                    image: image,
                    isNetworkImage: networkImage.isNotEmpty,
                  );
          }),
        ),

        //--------------------------- BANNER CHANGE BTN ---------------------------

        Positioned(
          right: JmSize.defaultSpace / 2,
          bottom: JmSize.defaultSpace / 2,
          child: GestureDetector(
            onTap: () {
              controller.uploadUserBannerPicture();
            },
            child: const SizedBox(
              height: 35,
              width: 35,
              child: Center(
                  child: Icon(
                UniconsLine.image_plus,
              )),
            ).asGlass(
                tintColor: isDark ? JColor.secondary : JColor.secondary,
                clipBorderRadius: BorderRadius.circular(JSize.borderRadLg)),
          ),
        ),

        //------------------------------ PROFILE PIC ------------------------------
        Positioned(
          bottom: -50,
          child: SizedBox(
            width: JFluid.percentWidth(context: context, percent: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Obx(() {
                    final networkImage = controller.user.value.profilePic;
                    final image = networkImage.isNotEmpty
                        ? networkImage
                        : JImages.defaultProfileImage;
                    return controller.imageUploading.value
                        ? const JShimmerEffect(width: 100, height: 100)
                        : UserProfileImage(
                            image: image,
                            isNetworkImage: networkImage.isNotEmpty,
                          );
                  }),
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
              Get.to(() =>  Settings());
            },
            child: Container(
              color: const Color.fromARGB(148, 255, 218, 157),
              height: 35,
              width: 35,
              child: const Center(
                  child: Icon(
                UniconsLine.setting,
                size: 30,
              )),
            ).asGlass(
                tintColor: isDark ? JColor.secondary : JColor.secondary,
                clipBorderRadius: BorderRadius.circular(JSize.borderRadLg)),
          ),
        ),
      ],
    );
  }
}
