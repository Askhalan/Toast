import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class ProfileUserInfo extends StatelessWidget {
  const ProfileUserInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(JmSize.defaultSpace-7), 
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //------------------------------ USER NAME ------------------------------
    
          Text(
            'Chef Pilla',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
    
          //------------------------------- USER BIO ------------------------------
    
          Text(
            'Hello world I am Cheff Pilla , I am from India . I love cooking so much',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(),textAlign: TextAlign.center,
          ),
    
          //---------------------------- FOLLOW DETAILS ---------------------------
    
          Container(
            margin: const EdgeInsets.symmetric(vertical: JmSize.spaceBtwItems),
            width: double.infinity, height: 90,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(JmSize.borderRadiusLg),border: Border.all(color: JColor.primary)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //-------------------------------  NO.POSTS ------------------------------
                Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('59',style:Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.normal
                    ),),
                    Text(JTexts.toast,style: Theme.of(context).textTheme.bodyLarge)
                  ],
                ),
                //------------------------------ NO.FOLLOWERS  ---------------------------
                 Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('590',style:Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.normal
                    ),),
                    Text(JTexts.followers,style: Theme.of(context).textTheme.bodyLarge)
                  ],
                ),
                //------------------------------ NO.FOLLOWING  ---------------------------
                 Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('759',style:Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.normal
                    ),),
                    Text(JTexts.following,style: Theme.of(context).textTheme.bodyLarge)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}