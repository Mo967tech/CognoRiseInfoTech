import 'package:bmi_app/constants.dart';
import 'package:bmi_app/helper/get_bmi_class.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomResultContainer extends StatefulWidget {
  double bmi;
  CustomResultContainer({required this.bmi, super.key});

  @override
  State<CustomResultContainer> createState() => _CustomResultContainerState();
}

class _CustomResultContainerState extends State<CustomResultContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kInactiveColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          ListTile(
            trailing: Text(
              getBmiClass(widget.bmi),
              style: const TextStyle(
                color: kActiveColor,
                fontSize: 20,
              ),
            ),
            leading: const Text(
              "Your BMI is",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          Text(
            widget.bmi.toStringAsFixed(2),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 70,
            ),
          ),
          Slider(
            inactiveColor: Colors.black,
            activeColor: kActiveColor,
            value: widget.bmi,
            onChanged: (bmi) => widget.bmi = bmi,
            min: 1,
            max: 1000,
            divisions: 999,
            label: getBmiClass(widget.bmi),
            thumbColor: kColor,
          ),
        ],
      ),
    );
  }
}
