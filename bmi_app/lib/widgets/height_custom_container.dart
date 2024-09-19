import 'package:bmi_app/constants.dart';
import 'package:flutter/material.dart';

class HeightCustomContainer extends StatefulWidget {
  final void Function(double) onChanged;
  final double height;

  const HeightCustomContainer({
    required this.onChanged,
    required this.height,
    super.key,
  });

  @override
  State<HeightCustomContainer> createState() => _HeightCustomContainerState();
}

class _HeightCustomContainerState extends State<HeightCustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kInactiveColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          const ListTile(
            trailing: CircleAvatar(
              backgroundColor: kColor,
              child: Text(
                "Cm",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            leading: Text(
              "Height",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          Text(
            "${widget.height.toInt()}",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 70,
            ),
          ),
          Slider(
            inactiveColor: Colors.black,
            activeColor: kActiveColor,
            value: widget.height,
            onChanged: widget.onChanged,
            min: 0,
            max: 250,
            divisions: 250,
            thumbColor: kColor,
          ),
        ],
      ),
    );
  }
}
