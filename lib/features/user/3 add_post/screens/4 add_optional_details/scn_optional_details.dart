

import 'package:flutter/material.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/utils/constants/sizes.dart';

import '../../../../../common/app/widgets/appbar/appbar.dart';
import '../../../../../common/app/widgets/appbar/appbar_widgets/w_page_indicator.dart';
import '../../../../../utils/constants/text_strings.dart';
import 'widgets/w_optional_gallery.dart';
import 'widgets/w_optional_header.dart';
import 'widgets/w_optional_processing_btns.dart';
import 'widgets/w_youtube_link.dart';

class ScnAddOptionalDetails extends StatelessWidget {
  const ScnAddOptionalDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: JAppbar(
        title: Text(
          JTexts.addMoreDetails,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: const [
          PageIndicatorWithTotal(
            pageNo: '4',
            totalPageNo: '4',
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(JmSize.defaultSpace - 7),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //------------------------------------------------------- HEADER ---------------------------------------------------------

              AddOptionalHeader(),
                        
              //-------------------------------------------------- YOUTUBE VIDEO LINK --------------------------------------------------
                        
              JGap(h: JmSize.spaceBtwSections),
              AddOptionalYoutubeLink(),
                        
              //-------------------------------------------------------- GALLERY -------------------------------------------------------
                        
              JGap(h: JmSize.spaceBtwSections),
              AddOptionalGallery(),
          
              //-------------------------------------------------- PROCESSING BUTTONS --------------------------------------------------
              JGap(h: JmSize.spaceBtwSections),
              AddOptionalProcessingButtons()
            ],
          ),
        ),
      ),
    );
  }
}
