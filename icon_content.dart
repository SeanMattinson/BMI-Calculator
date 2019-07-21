import 'package:flutter/material.dart';
import 'package:bmi_calculator/Constants.dart';

class IconWidget extends StatelessWidget {
  final IconData icon;
  final String gender;

  IconWidget({@required this.icon, this.gender});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(height: 15.0),
        Text(
          gender,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
