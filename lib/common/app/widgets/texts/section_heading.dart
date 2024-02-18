import 'package:flutter/material.dart';
import 'package:toast/utils/constants/colors.dart';

class JSectionHeading extends StatelessWidget {
  const JSectionHeading(
      {super.key,
      required this.heading,
      this.buttonText = '',
      this.buttonColor = JColor.primary,
      this.onPressed,
      this.showActionButton = false,
      this.headingColor = JColor.white,
      this.isFixedColor = true});
  final String heading;
  final String buttonText;
  final void Function()? onPressed;
  final dynamic buttonColor;
  final bool showActionButton;
  final Color headingColor;
  final bool isFixedColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          heading,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: isFixedColor ? headingColor : null),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          GestureDetector(
            onTap: onPressed,
            child: Text(
              buttonText,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(color: buttonColor),
            ),
          )
      ],
    );
  }
}
