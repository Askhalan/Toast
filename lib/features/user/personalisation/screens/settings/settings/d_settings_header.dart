import 'package:flutter/material.dart';
import 'package:toast/common/app/widgets/appbar/appbar.dart';
import 'package:toast/common/app/widgets/decoration_items/custom_containers/primary_header_container.dart';
import 'package:toast/features/user/personalisation/screens/settings/settings/w_settings_personal_info.dart';
import 'package:toast/features/user/personalisation/screens/settings/settings/w_settings_profile_info.dart';
import 'package:toast/utils/constants/colors.dart';

class SettingsHeader extends StatelessWidget {
  const SettingsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: JPrimaryHeaderContainer(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //----------------------------------------- APPBAR -----------------------------------------
          JAppbar(
            title: Text(
              'Settings',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontSize: 22, color: JColor.white),
            ),
          ),
    
          //----------------------------------- PROFILE INFORMATION -----------------------------------
    
          SettingsProfileInformation(),
    
          //----------------------------------- PERSONAL INFORMATION ----------------------------------
    
          ProfilePersonalInformation(),
        ],
      )),
    );
  }
}

