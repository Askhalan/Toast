// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/common/app/widgets/appbar/appbar.dart';
import 'package:toast/common/app/widgets/decoration_items/custom_containers/constrained_container.dart';
import 'package:toast/common/app/widgets/decoration_items/custom_containers/primary_header_container.dart';
import 'package:toast/common/app/widgets/form%20elements/elevated_button.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/features/user/personalisation/controller/user_controller.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/constants/text_strings.dart';
import 'package:toast/utils/validators/validation.dart';

class ReAuthUSer extends StatelessWidget {
  ReAuthUSer({super.key});
  final controller = UserController.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          JPrimaryHeaderContainer(
            height: 150,
            child: Column(
              children: [
                JAppbar(
                  title: Text(
                    'Re-Authenticate User',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  centerTitle: true,
                  leadingIcon: Icons.arrow_back_ios,
                  leadingOnPressed: () {
                    Get.back();Get.back();
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(JmSize.defaultSpace),
            child: Column(
              children: [
                 const JGap(
                          // h: JmSize.spaceBtwSections ,
                        ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: JmSize.spaceBtwSections),
                  child: Form(
                    key: controller.reAuthFormKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        //
                        JTextFIeldContainer(
                          child: TextFormField(
                            controller: controller.email,
                            validator: (value) =>
                                JValidator.validateEmail(value),
                            decoration: const InputDecoration(
                              labelText: JTexts.email,
                            ),
                          ),
                        ),
                        const JGap(
                          h: JmSize.spaceBtwInputFields,
                        ),
                        JTextFIeldContainer(
                          child: TextFormField(
                            controller: controller.password,
                            validator: (value) =>
                                JValidator.validateEmptyText(value, 'Password'),
                            decoration: const InputDecoration(
                              labelText: JTexts.password,
                              suffixIcon: Icon(Icons.remove_red_eye_outlined),
                            ),
                          ),
                        ),
                        const JGap(
                          h: JmSize.spaceBtwSections * 2,
                        ),
                        JMElevatedButton(
                          text: JTexts.reAuthenticate,
                          onPressed: () {
                            controller.reAuthenticateEmailAndPassworduser();
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
