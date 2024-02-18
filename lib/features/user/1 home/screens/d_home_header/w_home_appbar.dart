import 'package:flutter/material.dart';
import 'package:toast/utils/constants/colors.dart';
// import 'package:toast/utils/constants/sizes.dart';
import 'package:unicons/unicons.dart';

import '../../../../../common/app/widgets/appbar/appbar.dart';
import '../../../../../utils/constants/text_strings.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return JAppbar( 
      // horizontalpadding: JmSize.defaultSpace-15,
      title: Text(JTexts.userName,style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontSize: 22,color: JColor.white),),
      actions: [
        IconButton(onPressed: (){}, icon: const Icon(UniconsLine.bars))
      ],
    );
  }
}