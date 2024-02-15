import 'package:flutter/material.dart';

import '../../../../../../common/app/widgets/form elements/elevated_button.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../utils/constants/text_strings.dart';

class DirectionsAddButton extends StatelessWidget {
  const DirectionsAddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: JMElevatedButton(
        margin: const EdgeInsets.all(JmSize.spaceBtwInputFields),
        color: const Color.fromARGB(255, 255, 230, 189),
        neverChangeTextColor: true,
        text: JTexts.addDirections,
        // icon: Icons.add,
        onPressed: () {},
      ),
    );
  }
}
