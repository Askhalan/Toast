// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:toast/common/web/styles/texts.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/features/user/personalisation/screens/settings/settings/w_user_profile_image.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/image_strings.dart';
import 'package:toast/utils/constants/sizes.dart';

class WNavFooter extends StatelessWidget {
  const WNavFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: JmSize.defaultSpace / 2,vertical: JmSize.defaultSpace,),
      child: Container(
        constraints: BoxConstraints(maxHeight: 170,minHeight: 100),
        padding: EdgeInsets.symmetric(
            vertical: JmSize.defaultSpace, horizontal: JmSize.defaultSpace / 2),
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: JColor.darkGrey),
            color: JColor.bgSecondary,
            borderRadius: BorderRadius.circular(JmSize.borderRadiusLg)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                    height: 30,
                    width: 30,
                    child:
                        // Obx(() {
                        // final networkImage = controller.user.value.profilePic;
                        // final image =
                        // networkImage.isNotEmpty
                        // ? networkImage
                        // :
                        // JImages.defaultProfileImage;
                        // return
                        // controller.imageUploading.value
                        // ? const JShimmerEffect(width: 100, height: 100)
                        // :
                        UserProfileImage(
                      image: JImages.defaultProfileImage,
                      // isNetworkImage: networkImage.isNotEmpty,
                    )
                    // }),
                    ),
                JGap(
                  h: 5,
                ),
                Text(
                  'Askhalan',
                  style: JTexts.wSubtitle,
                ),
                Text(
                  'askkhalan.aj@gmail.com',
                  style: JTexts.wBody,
                ),
              ],
            ),
      
            // ---------------------------------------- Admin Logout Button ----------------------------------------
      
            Padding(
              padding: EdgeInsets.only(top: 0),
              child: Container(
                // margin: EdgeInsets.symmetric(vertical: 10),
                height: 33,
                width: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(JmSize.borderRadiusMd),
                    color: JColor.secondary,
                    border: Border.all(color: JColor.primary)),
                padding: EdgeInsets.symmetric(
                  vertical: 5,
                ),
                child: Center(
                    child: Text(
                  'Logout',
                  style: TextStyle(color: JColor.primary),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
