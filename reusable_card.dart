import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final Function onPress; // This function variable (see line 16)
  // if you want to create a new Widget inside the Container you must declare it as a Widget variable
  ReusableCard(
      {@required this.colour,
      this.cardChild,
      this.onPress}); // constructor // @required is to show that a colour is required

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress, // goes into the gesture detector (see input_page line 38)
      child: Container(
        child: cardChild, // this is the Widget
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
