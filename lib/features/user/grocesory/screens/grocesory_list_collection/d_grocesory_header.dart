import 'package:flutter/material.dart';

import '../../../../../common/app/widgets/decoration_items/custom_containers/primary_header_container.dart';
import '../../../../../common/web/widgets/gap.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/devices/responsive.dart';
import 'w_grocesory_appbar.dart';

class GrocesoryHeader extends StatelessWidget {
  const GrocesoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: JPrimaryHeaderContainer(
        height: JFluid.percentHeight(context: context, percent: 20),
        child: const Column(
          children: [
            
            //-------------------------------------------------- APP BAR --------------------------------------------------
    
            GrocesoryAppBar(),
            JGap(h: JmSize.spaceBtwSections),
    
            //------------------------------------------------- SEARCH BAR ------------------------------------------------
    
            // JSearchbarContainer(text: 'Find your list '),
            JGap(h: JmSize.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}
