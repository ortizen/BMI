import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_child.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'toogle.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = kCardColor;
  Color femaleColor = kCardColor;
  int heigth = 180;
  int weight = 60;
  int age = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                    child: ReusableCard(
                      color: kCardColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'HEIGHT',
                            style: kTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(
                                '$heigth',
                                style: kStyleNumbers,
                              ),
                              Text(
                                'cm',
                                style: kTextStyle,
                              )
                            ],
                          ),
                          Slider(
                            value: heigth.toDouble(),
                            min: 80.0,
                            max: 230.0,
                            activeColor: Color(0xFFa23fee),
                            inactiveColor: Color(0xFF6f42e5),
                            onChanged: (double newValue) {
                              setState(() {
                                heigth = newValue.toInt();
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      color: kCardColor,
                      child: Toogle(
                        text: 'WEIGTH',
                        number: weight,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: kCardColor,
                      child: Toogle(
                        text: 'AGE',
                        number: age,
                      ),
                    ),
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
        maleColor = kActiveColor;
        femaleColor = kCardColor;
        break;
      case Gender.female:
        maleColor = kCardColor;
        femaleColor = kActiveColor;
        break;
    }
  }
}
