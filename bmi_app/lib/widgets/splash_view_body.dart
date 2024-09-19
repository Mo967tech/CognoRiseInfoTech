import 'package:bmi_app/constants.dart';
import 'package:bmi_app/widgets/custom_icon.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(flex: 5),
          CustomIcon(iconSize: 70, height: 80, width: 80),
          SizedBox(height: 20),
          Text(
            kTitle,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(flex: 5),
          CircularProgressIndicator(color: kColor),
          Spacer(flex: 1),
        ],
      ),
    );
  }
}
