import 'package:flutter/material.dart';

import '../../../../../../common/app/widgets/decoration_items/custom_containers/constrained_container.dart';
import '../../../../../../common/web/widgets/gap.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../utils/constants/text_strings.dart';
import '../../../../../../utils/validators/validation.dart';

class AddOptionalYoutubeLink extends StatelessWidget {
  const AddOptionalYoutubeLink({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          JTexts.youtubeLinkHeading,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const JGap(
          h: JmSize.spaceBtwInputFields * 0.5,
        ),
        JTextFIeldContainer(
          child: TextFormField(
            validator: (value) =>
                JValidator.validateEmptyText(JTexts.youtubeLink, value),
            // controller: controller.username,
            decoration: const InputDecoration(labelText: JTexts.youtubeLink),
          ),
        ),
      ],
    );
  }
}

