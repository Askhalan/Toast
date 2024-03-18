import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/common/app/widgets/decoration_items/custom_containers/constrained_container.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/features/user/social/controller/add_optional_controller.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/constants/text_strings.dart';
import 'package:toast/utils/validators/validation.dart';


class AddOptionalYoutubeLink extends StatelessWidget {
  const AddOptionalYoutubeLink({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final AddOptionalController controller = Get.find();
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
            controller: controller.youtubeLinkController,
            decoration: const InputDecoration(labelText: JTexts.youtubeLink),
          ),
        ),
      ],
    );
  }
}

