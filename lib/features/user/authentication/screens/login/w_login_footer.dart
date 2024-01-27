import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class ULoginFooter extends StatelessWidget {
  const ULoginFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            OutlinedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: JmSize.md),
                  child: Image.asset(JImages.logoFacebook),
                )),
            OutlinedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: JmSize.md),
                  child: Image.asset(JImages.logoGoogle),
                )),
            OutlinedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: JmSize.md),
                  child: Image.asset(JImages.logoApple),
                ))
          ],
        ),
      ],
    );
  }
}
