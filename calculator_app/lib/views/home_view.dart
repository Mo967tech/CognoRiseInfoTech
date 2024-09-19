import 'package:calculator_app/constants.dart';
import 'package:calculator_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  final List<String> buttons = const [
    "D",
    "C",
    "%",
    "x",
    "7",
    "8",
    "9",
    "÷",
    "4",
    "5",
    "6",
    "-",
    "1",
    "2",
    "3",
    "+",
    "0",
    ".",
    "=",
  ];

  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String num1 = "", operand = "", num2 = "";
  String result = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SizedBox(height: 250),
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: Text(
              result.isEmpty ? "0" : result,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 65,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
              itemBuilder: (context, index) {
                return CustomElevatedButton(
                  onPressed: () {
                    getFunctionality(index);
                  },
                  elevatedBtnValue: widget.buttons[index],
                  btnColor: ["D", "C"].contains(widget.buttons[index])
                      ? const Color(0XFF617D8B)
                      : ["%", "x", "-", "+", "=", "÷"]
                              .contains(widget.buttons[index])
                          ? const Color(0XFFFE9800)
                          : Colors.black,
                );
              },
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.buttons.length,
            ),
          ),
        ],
      ),
    );
  }

  void getFunctionality(int index) {
    setState(() {
      String btnValue = widget.buttons[index];

      if (RegExp(r'[0-9]').hasMatch(btnValue)) {
        // Handle numbers
        if (operand.isEmpty) {
          num1 += btnValue;
        } else {
          num2 += btnValue;
        }
        updateResult();
      } else if (btnValue == 'C') {
        // Clear the current input
        if (operand.isEmpty) {
          num1 = "";
        } else {
          num2 = "";
        }
        updateResult();
      } else if (btnValue == 'D') {
        // Clear all
        num1 = num2 = operand = "";
        result = "0";
      } else if (["+", "-", "x", "÷", "%"].contains(btnValue)) {
        // Set the operand
        if (num1.isNotEmpty) {
          operand = btnValue;
        }
      } else if (btnValue == "=") {
        // Perform calculation
        if (num1.isNotEmpty && num2.isNotEmpty && operand.isNotEmpty) {
          double firstNum = double.parse(num1);
          double secondNum = double.parse(num2);
          double finalResult = 0.0;

          switch (operand) {
            case "+":
              finalResult = firstNum + secondNum;
              break;
            case "-":
              finalResult = firstNum - secondNum;
              break;
            case "x":
              finalResult = firstNum * secondNum;
              break;
            case "÷":
              if (secondNum != 0) {
                finalResult = firstNum / secondNum;
              } else {
                result = "Error";
                return;
              }
              break;
            case "%":
              finalResult = firstNum % secondNum;
              break;
          }
          result = finalResult.toString();
          num1 = result;
          operand = num2 = "";
        }
      } else if (btnValue == ".") {
        // Add decimal point
        if (operand.isEmpty && !num1.contains(".")) {
          num1 += ".";
        } else if (!num2.contains(".")) {
          num2 += ".";
        }
        updateResult();
      }
    });
  }

  void updateResult() {
    setState(() {
      result = "$num1$operand$num2";
    });
  }
}
