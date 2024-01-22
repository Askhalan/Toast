// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:toast/features/admin/dashboard/screens/widgets/navigation/navigation_bar.dart';
import 'package:toast/utils/constants/colors.dart';

class UserManagement extends StatelessWidget {
  const UserManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: JColor.gradientBg
        ),
        child: Row(
          children: [
            JNavigationBar(selection: 3),
            Flexible(
              flex: 7,
              child: Container(
                decoration: BoxDecoration(
                  // color: const Color.fromARGB(255, 255, 111, 111)
                ),
              ),
            )
          ],
        ),
      ) ,
    );
  }
} 