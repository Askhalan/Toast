import 'package:flutter/material.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'w_feed_body.dart';
import 'w_feed_footer.dart';
import 'w_feed_header.dart';

class FeedItemTile extends StatelessWidget {
  const FeedItemTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      surfaceTintColor: Colors.transparent,
      // elevation: 0.7,
    
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(children: [
          //--------------------------------------- FEEDS HEADER SECTION --------------------------------------------
    
          FeedsHeader(),
    
          //---------------------------------------- FEEDS BODY  SECTION --------------------------------------------
    
          JGap(h: JmSize.spaceBtwItems * 0.7),
          FeedsBody(),
    
          //--------------------------------------- FEEDS FOOTER SECTION --------------------------------------------
          JGap(h: JmSize.spaceBtwItems * 0.5),
          FeedFooter(),
          JGap(h: JmSize.spaceBtwItems ),
        ]),
      ),
    );
  }
}
