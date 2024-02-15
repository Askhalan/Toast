import 'package:flutter/material.dart';

import '../../../../../../utils/devices/responsive.dart';

class AddOptionalHeader extends StatelessWidget {
  const AddOptionalHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: JFluid.percentHeight(context: context, percent: 25),
      decoration:
          const BoxDecoration(color: Color.fromARGB(255, 255, 235, 175)),
    );
  }
}