// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/constants/text_strings.dart';


class ScnSignup extends StatelessWidget {
  const ScnSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(JmSize.defaultSpace),
          child: Column(
            children: [
              Text(JTexts.signupTitle,style: Theme.of(context).textTheme.headlineMedium,),
              JGap(h: JSize.spaceBtwSections,),
              Column(
                children: [
                  TextFormField(decoration: InputDecoration(
                    labelText: JTexts.username
                  ),),
                  TextFormField(decoration: InputDecoration(
                    labelText: JTexts.username
                  ),)
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}