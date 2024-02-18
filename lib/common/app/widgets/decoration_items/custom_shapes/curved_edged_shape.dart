import 'package:flutter/material.dart';

import 'curved_edges_path.dart';

class BottomCurvedShape extends StatelessWidget {
  const BottomCurvedShape({
    super.key, this.child,
  });
 final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: JCustomCurvedEdges(),
      child: child
    );
  }
}
