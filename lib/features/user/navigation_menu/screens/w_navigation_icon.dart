import 'package:flutter/material.dart';
import '../../../../utils/constants/sizes.dart';
import '../contollers/navigation_bar_controller.dart';


class NavigationIcon extends StatelessWidget {
   NavigationIcon({
    super.key,
    required this.icon, this.onPressed,
  });
  final controller = NavigationBarController();
  final Widget icon;
  final onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: 
       onPressed
      ,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
            borderRadius: BorderRadius.circular(JSize.borderRadMd)),
        child: icon,
      ),
    );
  }
}