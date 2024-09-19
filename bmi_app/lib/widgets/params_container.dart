import 'package:bmi_app/constants.dart';
import 'package:bmi_app/models/param_model.dart';
import 'package:bmi_app/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  final ParamModel paramModel;
  final VoidCallback increase, decrease;
  final int param;

  const CustomContainer({
    required this.paramModel,
    required this.increase,
    required this.decrease,
    required this.param,
    super.key,
  });

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.28,
      height: MediaQuery.of(context).size.height / 4.8,
      decoration: BoxDecoration(
        color: kInactiveColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            widget.paramModel.paramName,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          CustomListTile(
            value: widget.param,
            increase: widget.increase,
            decrease: widget.decrease,
          ),
          Text(
            widget.paramModel.paramUnit,
            style: const TextStyle(
              fontSize: 25,
              color: Color(0XFF6B6B6B),
            ),
          ),
        ],
      ),
    );
  }
}
