import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(color: black),
        scaffoldBackgroundColor: Color(0xFF090B22),
      ),
      home: InputPage(),
    );
  }
}
