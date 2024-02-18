
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class PopularCreatorTile extends StatelessWidget {
  const PopularCreatorTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Colors.transparent,
      margin: const EdgeInsets.only(right: JmSize.spaceBtwItems),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const CircleAvatar(radius: 45,),
            SizedBox( 
              width: 80,
              child: Text('Troyan Smith',style: Theme.of(context).textTheme.bodyLarge,textAlign: TextAlign.center,))
          ],
        ),
      ),
    );
  }
}
