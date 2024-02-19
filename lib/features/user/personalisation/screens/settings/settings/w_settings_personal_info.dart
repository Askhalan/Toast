import 'package:flutter/material.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/features/user/personalisation/controller/user_controller.dart';
import 'package:toast/utils/constants/sizes.dart';

class ProfilePersonalInformation extends StatelessWidget {
   ProfilePersonalInformation({
    super.key,
  });
 final controller = UserController.instance;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(JmSize.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

           //------------------------------------- GENDER ------------------------------------

          Text(
            'Gender : ${controller.user.value.email}',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const JGap(h: JmSize.spaceBtwItems / 2),

          //---------------------------------------- DOB -------------------------------------

          Text(
            'Date of Birth : ${controller.user.value.email}',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const JGap(h: JmSize.spaceBtwItems / 2),

          //--------------------------------------- EMAIL ------------------------------------

          Text(
            'Email : ${controller.user.value.email}',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}