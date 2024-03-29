import 'package:flutter/material.dart';
import 'package:toast/utils/constants/sizes.dart';

class JPad {
  static const textFormField = EdgeInsets.all(16.0);

  static const searchField = EdgeInsets.all(5.0);

  static const itemGap = EdgeInsets.all(7.0);

  static const viewsInside = EdgeInsets.all(10.0);

  static const statBoxInside =
      EdgeInsets.symmetric(horizontal: 20, vertical: 8);

  static const statBoxInsideScrollable =
      EdgeInsets.only(left: 20, right: 20, top: 8);

  static const containerPiChart = EdgeInsets.all(15.0);

  static const webContainerInside = EdgeInsets.all(20.0);
  static const webContainerInsideScrollable =
      EdgeInsets.only(left: 20, right: 20, top: 20);

  static const wideBox = EdgeInsets.symmetric(horizontal: 40, vertical: 3);

//-------------------------- Pading Spaces for Mobile --------------------------

  static const paddingWithAppbar = EdgeInsets.only(
      top: JmSize.appBarHeight,
      left: JmSize.defaultSpace,
      right: JmSize.defaultSpace,
      bottom: JmSize.defaultSpace);
}
