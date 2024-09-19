import 'package:bmi_app/constants.dart';
import 'package:bmi_app/helper/show_snack_bar.dart';
import 'package:bmi_app/models/bmi_model.dart';
import 'package:bmi_app/models/param_model.dart';
import 'package:bmi_app/views/error_view.dart';
import 'package:bmi_app/views/result_view.dart';
import 'package:bmi_app/widgets/custom_calc_button.dart';
import 'package:bmi_app/widgets/custom_gender_container.dart';
import 'package:bmi_app/widgets/height_custom_container.dart';
import 'package:bmi_app/widgets/params_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BmiCalcViewBody extends StatefulWidget {
  const BmiCalcViewBody({super.key});

  @override
  State<BmiCalcViewBody> createState() => _BmiCalcViewBodyState();
}

class _BmiCalcViewBodyState extends State<BmiCalcViewBody> {
  String? gender;
  double height = 0.0;
  int age = 0, weight = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            children: [
              CustomGenderContainer(
                gender: "Male",
                icon: Icons.male,
                onTap: () => setState(() => gender = "Male"),
                color: gender == "Male" ? kActiveColor : kInactiveColor,
              ),
              const SizedBox(width: 10),
              CustomGenderContainer(
                gender: "Female",
                icon: Icons.male,
                onTap: () => setState(() => gender = "Female"),
                color: gender == "Female" ? kActiveColor : kInactiveColor,
              ),
            ],
          ),
          const SizedBox(height: 10),
          HeightCustomContainer(
            height: height,
            onChanged: (height) => setState(() => this.height = height),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              CustomContainer(
                param: weight,
                increase: () => setState(() => weight++),
                decrease: () {
                  if (weight > 0) {
                    setState(() => weight--);
                  } else {
                    showSnackBar(
                      context,
                      "You Can't Decrease More Than Zero",
                    );
                  }
                },
                paramModel: const ParamModel(
                  paramName: "Weight",
                  paramUnit: "kg",
                ),
              ),
              const SizedBox(width: 10),
              CustomContainer(
                param: age,
                increase: () => setState(() => age++),
                decrease: () {
                  if (age > 0) {
                    setState(() => age--);
                  } else {
                    showSnackBar(
                      context,
                      "You Can't Decrease More Than Zero",
                    );
                  }
                },
                paramModel: const ParamModel(
                  paramName: "Age",
                  paramUnit: "Year",
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          CustomCalcButton(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  if (age != 0 && weight != 0 && height != 0) {
                    return ResultView(
                      bmiModel: BmiModel(
                        gender: gender,
                        height: height,
                        weight: weight,
                        age: age,
                      ),
                    );
                  } else {
                    return const ErrorView();
                  }
                },
              ),
            ),
            btnName: "Calculate",
            icon: FontAwesomeIcons.arrowsRotate,
          ),
        ],
      ),
    );
  }
}
