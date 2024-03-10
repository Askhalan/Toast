import 'package:flutter/material.dart';

class NavIcon extends StatelessWidget {
  final Color color;
  final double height;
  final double width;
  final IconData icons;

  const NavIcon(
      {super.key,
      this.color = Colors.white,
      this.height = 70,
      this.width = 60,
      required this.icons});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Center(
        child: Icon(
          icons,
          color: color,
        ),
      ),
    );
  }
}