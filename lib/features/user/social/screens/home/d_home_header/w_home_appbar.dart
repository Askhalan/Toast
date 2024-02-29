import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toast/common/app/widgets/appbar/appbar.dart';
import 'package:toast/common/app/widgets/loaders/shimmers/shimmer_effect.dart';
import 'package:toast/features/user/personalisation/controller/user_controller.dart';
import 'package:toast/utils/constants/colors.dart';
// import 'package:toast/utils/constants/sizes.dart';
import 'package:unicons/unicons.dart';

class HomeAppBar extends StatelessWidget {
   HomeAppBar({
    super.key,
  });
    final controller = Get.put(UserController());
  @override
  Widget build(BuildContext context) {

    return JAppbar(
      // horizontalpadding: JmSize.defaultSpace-15,
      title: Obx(() {
        if (controller.profileLoading.value) {
          return const JShimmerEffect(width: 80, height: 15);
        } else {
          return Text(
            controller.user.value.firstName,
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(fontSize: 22, color: JColor.white),
          );
        }
      }),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(UniconsLine.bars))
      ],
    );
  }
}
