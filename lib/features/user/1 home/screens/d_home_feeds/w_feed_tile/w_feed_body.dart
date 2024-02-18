import 'package:flutter/material.dart';

import '../../../../../../utils/constants/sizes.dart';
import 'w_rating_chip.dart';
import 'w_save_button.dart';

class FeedsBody extends StatelessWidget {
  const FeedsBody({
    super.key,
    this.onTap,
  });

  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: onTap,
          child: AspectRatio(
            aspectRatio: 7 / 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(JmSize.borderRadiusLg),
                  image: const DecorationImage(
                      image: AssetImage(
                          'assets/images/TempFoodImages/pexels-rajesh-tp-1633525.jpg'),
                      fit: BoxFit.cover)),
            ),
          ),
        ),
        const RatingChip(),
        const SaveButton(),
      ],
    );
  }
}



