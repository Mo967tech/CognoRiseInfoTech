import 'package:bmi_app/constants.dart';
import 'package:flutter/material.dart';

class CustomCalcButton extends StatelessWidget {
  final VoidCallback onTap;
  final String btnName;
  final IconData icon;

  const CustomCalcButton({
    required this.onTap,
    required this.btnName,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kColor,
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              btnName,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            const SizedBox(width: 15),
            Icon(
              icon,
              color: Colors.black,
              size: 25,
            ),
          ],
        ),
      ),
    );
  }
}
