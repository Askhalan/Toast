import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glass/glass.dart';
import 'package:toast/features/user/personalisation/screens/settings/edit_profile/scn_edit_profile.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/constants/text_strings.dart';
import 'package:toast/utils/helpers/helper_functions.dart';
import 'package:unicons/unicons.dart';

class ProfileEditButton extends StatelessWidget {
  const ProfileEditButton({
    super.key,});

  @override
  Widget build(BuildContext context) {
    final isDark = JHelperFunctions.isDarkMode(context);
    return Positioned(
      right: 10,
      bottom: 10,
      child: GestureDetector(
        onTap: () {
          Get.to(()=> const ScnEditProfile());
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3.5),
          decoration: BoxDecoration(
              color: JColor.lightGrey.withOpacity(0.8),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF000000).withOpacity(0.29),
                  offset: const Offset(4, 4),
                  blurRadius: 16,
                  spreadRadius: 4,
                ),
              ]),
          width: 85,
          child: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                JTexts.editProfile,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const Icon(
                UniconsLine.edit_alt,
                size: 20,
              )
            ],
          )),
        ).asGlass(
            tintColor: isDark
                ? JColor.darkGrey.withOpacity(0.5)
                : JColor.lightGrey.withOpacity(0.5),
            clipBorderRadius: BorderRadius.circular(JSize.borderRadLg)),
      ),
    );
  }
}
