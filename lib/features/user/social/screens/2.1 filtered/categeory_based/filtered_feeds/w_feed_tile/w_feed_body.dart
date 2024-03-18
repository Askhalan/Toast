import 'package:flutter/material.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'w_rating_chip.dart';
import 'w_save_button.dart';

class FeedsBody extends StatelessWidget {
  const FeedsBody({
    super.key,
    this.onTap, required this.imageUrl,
  });
 final String imageUrl;
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
                  image:  DecorationImage(
                      image: NetworkImage(
                          imageUrl),
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



