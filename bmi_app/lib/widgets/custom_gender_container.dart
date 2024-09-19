import 'package:bmi_app/constants.dart';
import 'package:flutter/material.dart';

class CustomGenderContainer extends StatelessWidget {
  final String gender;
  final IconData icon;
  final VoidCallback onTap;
  final Color color;

  const CustomGenderContainer({
    required this.icon,
    required this.gender,
    required this.onTap,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        width: MediaQuery.of(context).size.width / 2.3,
        height: MediaQuery.of(context).size.width / 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 60,
              color: kColor,
            ),
            const SizedBox(height: 20),
            Text(
              gender,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
