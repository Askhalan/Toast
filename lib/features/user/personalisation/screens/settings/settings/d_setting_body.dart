import 'package:flutter/material.dart';
import 'package:toast/common/app/widgets/decoration_items/custom_containers/elevated_tile_container.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/features/user/personalisation/controller/user_controller.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:unicons/unicons.dart';

class SettingsBody extends StatelessWidget {
   SettingsBody({
    super.key,
  });
 
 final controller = UserController.instance;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(JmSize.defaultSpace * 0.6),
      child: Column(
        children: [
          //----------------------------------------- PRIVACY SETTINGS ------------------------------------
    
          ElevatedTileContainer(
              padding: const EdgeInsets.only(left: JmSize.defaultSpace * 2),
              child: Row(
                children: [
                  const Icon(
                    UniconsLine.shield_check,
                  ),
                  const JGap(
                    w: 30.0,
                  ),
                  Text(
                    'Privacy Settings',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              )),
          const JGap(
            h: JmSize.spaceBtwItems,
          ),
    
          //---------------------------------------------- FEEDBACK ----------------------------------------
    
          ElevatedTileContainer(
              padding: const EdgeInsets.only(left: JmSize.defaultSpace * 2),
              child: Row(
                children: [
                  const Icon(
                    UniconsLine.envelope_edit,
                  ),
                  const JGap(
                    w: 30.0,
                  ),
                  Text(
                    'Write to us',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              )),
          const JGap(
            h: JmSize.spaceBtwItems,
          ),
    
          //----------------------------------------- DELETE ACCOUNT BTN ------------------------------------
          GestureDetector(
            onTap: ()=> controller.deleteAccountWarningPopup(),
            child: ElevatedTileContainer(
                padding: const EdgeInsets.only(left: JmSize.defaultSpace * 2),
                child: Row(
                  children: [
                    const Icon(UniconsLine.trash_alt, color: JColor.error),
                    const JGap(
                      w: 30.0,
                    ),
                    Text(
                      'Delete account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(color: JColor.error),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
