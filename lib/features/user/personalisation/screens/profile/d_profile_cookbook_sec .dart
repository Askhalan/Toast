
import 'package:flutter/material.dart';
import 'package:toast/utils/constants/sizes.dart';



class ProfileCookbookSection extends StatelessWidget {
  const ProfileCookbookSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: JmSize.spaceBtwItems*0.7),
      child: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: JmSize.spaceBtwItems*0.5,
          mainAxisSpacing: JmSize.spaceBtwItems*0.5,
          // childAspectRatio: 2/1
        ),
        itemCount: 12,
        itemBuilder: (BuildContext context, int index) {
          return const Card(
            elevation: 10,
              // child: TempBgImageContainer(image: 'assets/images/TempFoodImages/pexels-valeria-boltneva-1639556.jpg',)
              );
        },
      ),
    );
  }
}
