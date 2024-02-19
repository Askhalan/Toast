import 'package:flutter/material.dart';
import 'package:toast/common/app/widgets/appbar/appbar.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/text_strings.dart';
import 'package:unicons/unicons.dart';


class ExploreAppBar extends StatelessWidget {
  const ExploreAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return JAppbar(
      title: Text(
        JTexts.exploreAppBarTitle,
        style: Theme.of(context)
            .textTheme
            .headlineMedium!
            .copyWith(fontSize: 22, color: JColor.white),
      ),
      actions: [
        IconButton(
            onPressed: () {}, icon: const Icon(UniconsLine.bars))
      ],
    );
  }
}
