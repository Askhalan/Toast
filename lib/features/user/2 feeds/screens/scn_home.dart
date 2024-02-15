import 'package:flutter/material.dart';
import 'package:toast/common/web/widgets/logos/text_logo.dart';

import '../../../../common/app/widgets/appbar/appbar.dart';

class ScnHome extends StatelessWidget {
  const ScnHome({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: JAppbar( title: JLogoText(size: 75) ),
    );
  }
}