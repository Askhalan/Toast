// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:toast/common/app/widgets/appbar/appbar.dart';
import 'package:toast/features/admin/1-navigation/screen/widgets/w_nav_body.dart';
import 'package:toast/features/admin/1-navigation/screen/widgets/w_nav_footer.dart';
import 'package:toast/utils/constants/colors.dart';

class ANavigationTab extends StatelessWidget {
  const ANavigationTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: JColor.lightGrey),
       constraints: BoxConstraints(maxWidth: 250),
      child: Flexible(
        flex: 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            JAppbar(
              title: Text('TOAST',style: TextStyle(color: JColor.primary),),
            ),
            // ---------------------------------------- NAVIGATION BODY ----------------------------------------
        
            WNavBody(),
        
            // ---------------------------------------- NAVIGATION FOOTER ----------------------------------------
        
            WNavFooter(),
          ],
        ),
      ),
    );
  }
}



