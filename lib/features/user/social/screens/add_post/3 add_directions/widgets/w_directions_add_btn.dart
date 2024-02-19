import 'package:flutter/material.dart';
import 'package:toast/common/app/widgets/form%20elements/elevated_button.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/constants/text_strings.dart';


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
