import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(JTexts.haveAccount),
        TextButton(
            onPressed: () {},
            child: Text(
              JTexts.loginNow,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .apply(color: JColor.primary),
            ))
      ],
    );
  }
}
