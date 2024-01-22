// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:toast/common/web/styles/texts.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/image_strings.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/devices/responsive.dart';

import '../../../../common/web/widgets/button.dart';
import '../../../../common/web/widgets/logo.dart';
import '../../../../common/web/widgets/text_form_field.dart';

class ALoginScn extends StatelessWidget {
  ALoginScn({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 245, 245, 245),
        body: Center(
          child: Card(
            elevation: 5,
            child: Container(
              width: JFluid.percentWidth(context: context, percent: 90),
              height: JFluid.percentHeight(context: context, percent: 85),
              decoration: BoxDecoration(
                  color: JColor.bg,
                  borderRadius: BorderRadius.circular(JSize.borderRadXl)),
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Image.asset(
                      JImages.adminLogin,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 50, horizontal: 50),
                      decoration: BoxDecoration(
                        color: JColor.secondary,
                        // borderRadius: BorderRadius.circular(JSize.borderRadXl)
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(JSize.borderRadXl),
                          bottomRight: Radius.circular(JSize.borderRadXl),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              JIconLogo(size: 100),
                              Text(
                                'Welcome Back',
                                style: JTexts.styleWebTitleLg,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              JTextFormField(
                                label: 'Email',
                                hintText: 'Enter your email',
                                textEditingController: emailController,
                                errorText: '',
                                hidetext: false,
                              ),
                              JTextFormField(
                                label: 'Password',
                                hintText: 'Enter your password',
                                textEditingController: passwordController,
                                errorText: '',
                                hidetext: true,
                              ),
                            ],
                          ),
                          JButtonPrimary( 
                            text: 'Login In',
                          ),
                         
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
