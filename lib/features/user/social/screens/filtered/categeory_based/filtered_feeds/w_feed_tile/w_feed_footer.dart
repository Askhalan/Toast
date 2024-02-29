import 'package:flutter/material.dart';

class FeedFooter extends StatelessWidget {
  const FeedFooter({
    super.key, required this.title,
  });
final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
         title,
          style: Theme.of(context).textTheme.bodyLarge,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        // GestureDetector(
        //     onTap: () {},
        //     child: const Icon(
        //       UniconsLine.heart,
        //       size: 25,
        //       color: JColor.error,
        //     ))
      ],
    );
  }
}
