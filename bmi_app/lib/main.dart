import 'package:bmi_app/views/bmi_calc_view.dart';
import 'package:bmi_app/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BmiCalculatorApp());

class BmiCalculatorApp extends StatelessWidget {
  const BmiCalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      routes: {
        SplashView.id: (context) => const SplashView(),
        BmiCalcView.id: (context) => const BmiCalcView(),
      },
      initialRoute: SplashView.id,
    );
  }
}
