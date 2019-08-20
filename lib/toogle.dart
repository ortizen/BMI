import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Toogle extends StatefulWidget {
  int number;
  final String text;
  Toogle({@required this.number, @required this.text});
  _ToogleState createState() => _ToogleState();
}

class _ToogleState extends State<Toogle> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          this.widget.text,
          style: kTextStyle,
        ),
        Text(
          this.widget.number.toString(),
          style: kStyleNumbers,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustButton(
              count: 1,
              icon: FontAwesomeIcons.plus,
              number: this.widget.number,
            ),
            SizedBox(
              width: 0.50,
            ),
            CustButton(
              count: 1,
              icon: FontAwesomeIcons.minus,
              number: this.widget.number,
            )
          ],
        )
      ],
    );
  }
}

class CustButton extends StatefulWidget {
  final IconData icon;
  int count;
  int number;
  CustButton(
      {@required this.icon, @required this.count, @required this.number});
  _CustButtonState createState() => _CustButtonState();
}

class _CustButtonState extends State<CustButton> {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: () {
          pressed(this.widget.number, this.widget.count);
        },
        child: Icon(this.widget.icon));
  }

  void pressed(int number, int count) {
    setState(() {
      number += count;
      print(number);
    });
  }
}
