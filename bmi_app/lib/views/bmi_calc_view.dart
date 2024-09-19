import 'package:bmi_app/constants.dart';
import 'package:bmi_app/widgets/bmi_calc_view_body.dart';
import 'package:bmi_app/widgets/custom_icon.dart';
import 'package:flutter/material.dart';

class BmiCalcView extends StatelessWidget {
  static String id = "BmiCalcView";

  const BmiCalcView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomIcon(
              iconSize: 30,
              height: 35,
              width: 35,
            ),
            SizedBox(width: 10),
            Text(
              kTitle,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: const BmiCalcViewBody(),
    );
  }
}
