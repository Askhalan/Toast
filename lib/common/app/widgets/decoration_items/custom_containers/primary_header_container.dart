import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../custom_shapes/curved_edged_shape.dart';
import 'circular_container.dart';

class JPrimaryHeaderContainer extends StatelessWidget {
  const JPrimaryHeaderContainer({
    super.key,
    required this.child,  this.height ,
  });
  final double? height;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return BottomCurvedShape(
      child: Container(
        height: height,
          color: JColor.primary,
          padding: const EdgeInsets.all(0),
          child: Stack(
            children: [
              //----------------------------------------- CUSTOM BACKGROUND SHAPES -----------------------------------------
              
              Positioned(
                  top: -150,
                  right: -190,
                  child:
                      JCircularContainer(color: JColor.white.withOpacity(0.1))),
              Positioned(
                  top: 110,
                  right: -270,
                  child:
                      JCircularContainer(color: JColor.white.withOpacity(0.1))),

              //-------------------------------------------------- CHILD --------------------------------------------------

              child,
            ],
          )),
    );
  }
}
