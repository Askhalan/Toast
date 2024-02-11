import 'package:flutter/material.dart';
import 'package:toast/features/user/1%20authentication/contollers/signup_controller.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class AlreadyHaveAccount extends StatelessWidget {
  AlreadyHaveAccount({
    super.key,
  });
  final controller = SignupController();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(JTexts.haveAccount),
        TextButton(
            onPressed: () {
              controller.haveAccount();
            },
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
