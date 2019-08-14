import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

const Color cardColor = Color(0xFF282166);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(color: cardColor),
                  ),
                  Expanded(
                    child: ReusableCard(color: cardColor),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(color: cardColor),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(color: cardColor),
                  ),
                  Expanded(
                    child: ReusableCard(color: cardColor),
                  ),
                ],
              ),
            ),
            Container(
              color: Color(0xFF1E205F),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 80.0,
            ),
          ],
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color color;
  ReusableCard({@required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 70.0,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
