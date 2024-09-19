import 'package:bmi_app/constants.dart';
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final double iconSize, width, height;

  const CustomIcon({
    required this.iconSize,
    required this.height,
    required this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: kColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(
        Icons.hourglass_full_rounded,
        color: Colors.black,
        size: iconSize,
      ),
    );
  }
}
