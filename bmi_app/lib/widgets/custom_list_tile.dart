import 'package:bmi_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatefulWidget {
  final VoidCallback increase, decrease;
  final int value;
  const CustomListTile({
    required this.increase,
    required this.decrease,
    required this.value,
    super.key,
  });

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CustomButton(
        icon: Icons.remove,
        onTap: widget.decrease,
      ),
      title: Center(
        child: Text(
          "${widget.value}",
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      trailing: CustomButton(
        icon: Icons.add,
        onTap: widget.increase,
      ),
    );
  }
}
