import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String elevatedBtnValue;
  final double width, height;
  final Color btnColor;

  const CustomElevatedButton({
    this.btnColor = Colors.black,
    this.width = 100,
    this.height = 80,
    required this.onPressed,
    required this.elevatedBtnValue,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(btnColor),
          fixedSize: WidgetStateProperty.resolveWith(
            (states) => Size(width, height),
          ),
        ),
        onPressed: onPressed,
        child: Center(
          child: Text(
            elevatedBtnValue,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 45,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
