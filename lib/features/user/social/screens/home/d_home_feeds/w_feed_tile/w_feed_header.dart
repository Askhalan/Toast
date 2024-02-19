import 'package:flutter/material.dart';
import 'package:toast/common/web/widgets/gap.dart';

class FeedsHeader extends StatelessWidget {
  const FeedsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage(''),
        ),
        const JGap(
          w: 30.0,
        ),
        Text(
          'Gladys',
          style: Theme.of(context).textTheme.bodyLarge,
        )
      ],
    );
  }
}
