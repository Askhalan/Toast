// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:toast/common/app/widgets/appbar/appbar.dart';
import 'package:toast/common/app/widgets/decoration_items/custom_containers/primary_header_container.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/features/user/personalisation/screens/settings/edit_profile/d_edit_profile_form.dart';
import 'package:toast/utils/constants/sizes.dart';

class ScnEditProfile extends StatelessWidget {
  const ScnEditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            JPrimaryHeaderContainer(
              height: 150,
              child: Column(
                children: [
                  JAppbar(title: Text('')),
                ],
              ),
            ),

            //---------------------------- Header ----------------------------

            Padding(
              padding: const EdgeInsets.all(JmSize.defaultSpace),
              child: Column(
                children: [
                  JGap(h: JSize.spaceBtwSections),
                  //---------------------------- Body ----------------------------
              
                  EditProfileForm(),
                  JGap(h: JmSize.spaceBtwSections),
              
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
