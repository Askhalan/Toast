// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:toast/common/app/widgets/decoration_items/custom_containers/primary_header_container.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'w_filtered_appbar.dart';

class FilteredHeader extends StatelessWidget {
  const FilteredHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return JPrimaryHeaderContainer(
        height: 140,
        child: Column(
          children: [
            //-------------------------------------------------- APP BAR --------------------------------------------------
            const JGap(
              h: JmSize.spaceBtwSections / 2,
            ),
            FilteredAppBar(),
            const JGap(
              h: JmSize.spaceBtwSections / 2,
            ),
          ],
        ));
  }
}
