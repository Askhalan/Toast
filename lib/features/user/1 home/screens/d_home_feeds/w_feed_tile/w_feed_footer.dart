import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import '../../../../../../utils/constants/colors.dart';

class FeedFooter extends StatelessWidget {
  const FeedFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Salad fanatic, veggie',
          style: Theme.of(context).textTheme.bodyLarge,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        GestureDetector(
            onTap: () {},
            child: const Icon(
              UniconsLine.heart,
              size: 25,
              color: JColor.error,
            ))
      ],
    );
  }
}
