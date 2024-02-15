import 'package:flutter/material.dart';
import 'package:toast/common/app/widgets/appbar/appbar.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/constants/text_strings.dart';

import '../../../../../common/app/widgets/appbar/appbar_widgets/w_page_indicator.dart';
import 'widgets/w_directions_form.dart';
import 'widgets/w_directions_processing_btns.dart';

class ScnAddDirections extends StatelessWidget {
  const ScnAddDirections({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: JAppbar(
        title: Text(
          JTexts.addDirections,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: const [
          PageIndicatorWithTotal(
            pageNo: '3',
            totalPageNo: '4',
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(JmSize.defaultSpace - 7),
        child: Column(
          children: [
            //------------------------------------------------- INGREDIENT ADD FORM --------------------------------------------------

            AddDirectionsForm(),

            //-------------------------------------------------- NAVIGATING BUTTON ---------------------------------------------------

            DirectionsProcessingButtons()
          ],
        ),
      ),
    );
  }
}
