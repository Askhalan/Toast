import 'package:flutter/material.dart';

import '../../../../../common/web/widgets/logos/text_logo.dart';
import '../../../../../utils/constants/text_strings.dart';

class ULoginHeader extends StatelessWidget {
  const ULoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        JLogoText(size: 150),
        Text(
          JTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        Text(
          JTexts.loginSubTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        )
      ],
    );
  }
}