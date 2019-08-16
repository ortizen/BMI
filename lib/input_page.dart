import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_child.dart';
import 'reusable_card.dart';

const Color cardColor = Color(0xFF282166);
const Color activeColor = Color(0xFF5A16E5);
enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = cardColor;
  Color femaleColor = cardColor;

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
                    child: ReusableCard(
                      color: maleColor,
                      child: IconChild(
                        text: 'MALE',
                        iconType: FontAwesomeIcons.mars,
                      ),
                      tap: () {
                        setState(() {
                          activateColor(Gender.male);
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: femaleColor,
                      child: IconChild(
                        text: 'FEMALE',
                        iconType: FontAwesomeIcons.venus,
                      ),
                      tap: () {
                        setState(() {
                          activateColor(Gender.female);
                        });
                      },
                    ),
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

  void activateColor(Gender gender) {
    var selection = gender;
    switch (selection) {
      case Gender.male:
        maleColor = activeColor;
        femaleColor = cardColor;
        break;
      case Gender.female:
        maleColor = cardColor;
        femaleColor = activeColor;
        break;
    }
  }
}
