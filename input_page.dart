import 'package:flutter/material.dart';

const cardColour = Color(0xFF1D1E33);
const bottomContainerHeight = 80.0;
const bottomContainerColour = Color(0xFFEA1456);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

void container() {}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(colour: cardColour),
                  ),
                  Expanded(
                    child: ReusableCard(colour: cardColour),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(colour: cardColour),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(colour: cardColour),
                  ),
                  Expanded(
                    child: ReusableCard(colour: cardColour),
                  ),
                ],
              ),
            ),
            Container(
              height: bottomContainerHeight,
              width: double.infinity,
              color: bottomContainerColour,
              margin: EdgeInsets.only(top: 10.0),
            ),
          ],
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget
      cardChild; // if you want to create a new Widget inside the Container you must declare it as a Widget variable
  ReusableCard(
       {@required this.colour,
      this.cardChild}); // constructor // @required is to show that a colour is required

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild, // this is the Widget
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
