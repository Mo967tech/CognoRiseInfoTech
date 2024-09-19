import 'package:bmi_app/helper/calc_bmi.dart';
import 'package:bmi_app/helper/get_bmi_advice.dart';
import 'package:bmi_app/helper/get_bmi_class.dart';
import 'package:bmi_app/models/bmi_model.dart';
import 'package:bmi_app/widgets/custom_calc_button.dart';
import 'package:bmi_app/widgets/custom_result_container.dart';
import 'package:flutter/material.dart';

class ResultViewBody extends StatelessWidget {
  final BmiModel bmiModel;
  const ResultViewBody({required this.bmiModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Result",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            const SizedBox(height: 10),
            CustomResultContainer(
                bmi: calcBmi(bmiModel.weight, bmiModel.height)),
            const SizedBox(height: 20),
            Text(
              getBmiClass(calcBmi(bmiModel.weight, bmiModel.height)),
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Diet and Nutrition",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 5),
            getBmiAdvice(calcBmi(bmiModel.weight, bmiModel.height)),
            const SizedBox(height: 30),
            CustomCalcButton(
              onTap: () => Navigator.pop(context),
              btnName: "Re-Calculate",
              icon: Icons.arrow_back,
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
