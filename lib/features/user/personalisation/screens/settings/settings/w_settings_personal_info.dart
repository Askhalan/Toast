// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/features/user/personalisation/controller/updater_profile_controller.dart';
import 'package:toast/features/user/personalisation/controller/user_controller.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:unicons/unicons.dart';

class ProfilePersonalInformation extends StatelessWidget {
  ProfilePersonalInformation({
    super.key,
  });
  final controller = UserController.instance;
  final UpdateUserController updateController = Get.find();
  @override
  Widget build(BuildContext context) {
    updateController.bioTextController.text =
        controller.user.value.bio;
    return Padding(
      padding: const EdgeInsets.all(JmSize.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          //------------------------------------- BIO ------------------------------------

          Obx(
            () => Column(
              children: [
                updateController.isBioEditable.value
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: EditableText(
                              maxLines: null,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(110)
                              ],
                              controller: updateController.bioTextController,
                              focusNode: updateController.focusNode,
                              style: Theme.of(context).textTheme.bodyLarge!,
                              cursorColor: Colors.blue,
                              backgroundCursorColor: Colors.grey,
                            ),
                          ),
                          GestureDetector(
                              onTap: () {
                                updateController.updateBio();
                                updateController.toggleBioeditable();
                              },
                              child: const Icon(UniconsLine.save))
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text(
                              'Bio : ${controller.user.value.bio}',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ),
                          GestureDetector(
                              onTap: () {
                                updateController.toggleBioeditable();
                              },
                              child: const Icon(UniconsLine.edit_alt))
                        ],
                      ),
              ],
            ),
          ),

          const JGap(h: JmSize.spaceBtwItems / 2),

          //------------------------------------- GENDER ------------------------------------

          // Text(
          //   'Gender : ${controller.user.value.email}',
          //   style: Theme.of(context).textTheme.bodyLarge,
          // ),
          // const JGap(h: JmSize.spaceBtwItems / 2),

          //---------------------------------------- DOB -------------------------------------

          // Text(
          //   'Date of Birth : ${controller.user.value.email}',
          //   style: Theme.of(context).textTheme.bodyLarge,
          // ),
          // const JGap(h: JmSize.spaceBtwItems / 2),

          //--------------------------------------- EMAIL ------------------------------------

          Text(
            'Email : ${controller.user.value.email}',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
