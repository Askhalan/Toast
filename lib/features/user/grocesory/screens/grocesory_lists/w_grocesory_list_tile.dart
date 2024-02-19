import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class GrocesoryListTile extends StatelessWidget {
  const GrocesoryListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: JmSize.spaceBtwInputFields*0.5),
      height: 100,
      padding: const EdgeInsets.all(JmSize.defaultSpace-15),
      decoration: BoxDecoration(
        // color: Color.fromARGB(255, 122, 211, 255),
        borderRadius: BorderRadius.circular(JmSize.borderRadiusLg),
        border: Border.all(color: JColor.secondary)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
    
        //------------------------------ ITEM IMAGE ------------------------------
    
        AspectRatio(aspectRatio: 1/1,
          child: Container(
            decoration: BoxDecoration(
              color: JColor.primary,
              borderRadius: BorderRadius.circular(JSize.borderRadLg),
              // image: DecorationImage(image: )
            ),
          ),
        ),
    
        //----------------------------- ITEM DETAILS -----------------------------
    
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Wheat Flour',style: Theme.of(context).textTheme.headlineSmall,),
            Text('500 gm',style: Theme.of(context).textTheme.titleMedium,)
    
          ],
        ),
    
        //------------------------------DELETE BUTTON -----------------------------
    
        IconButton(onPressed: (){}, icon: const Icon(UniconsLine.trash_alt) )
    
      
      ]),
    );
  }
}