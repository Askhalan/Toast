import 'package:flutter/material.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/features/user/social/screens/Recipe_view/directions_view/w_directions_view_body_buttons.dart';
import 'package:toast/features/user/social/screens/Recipe_view/directions_view/w_directions_view_body_heading.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';

class ViewDirectionBody extends StatelessWidget {
  const ViewDirectionBody({
    super.key,
    required this.allDirections,
  });

  final List allDirections;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const JGap(h: JmSize.spaceBtwSections),

        //------------------------------------ INGREDIENTS BODY HEADING ----------------------------------

        ViewDirectionsBodyHeading(totalSteps: allDirections.length ),

        //------------------------------------ INGREDIENTS BODY CONTENT ----------------------------------

        const JGap(h: JmSize.spaceBtwSections),
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: allDirections.length,
          separatorBuilder: (context, index) =>
              const JGap(h: JmSize.defaultSpace),
          itemBuilder: (context, index) {
            final direction = allDirections[index];
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 25,
                  width: 80,
                  decoration: BoxDecoration(
                      color: JColor.secondary,
                      borderRadius:
                          BorderRadius.circular(JSize.borderRadMd)),
                  child: Center(child: Text('Step ${index + 1}')),
                ),
                const JGap(
                  w: 15.0,
                ),
                Expanded(
                  child: Text(
                    direction,
                  ),
                )
              ],
            );
          },
        ),

        //------------------------------------ INGREDIENTS BODY BUTTONS ----------------------------------

        const JGap(h: JmSize.spaceBtwSections),
        const ViewDirectionsProcessingButtons()
      ],
    );
  }
}