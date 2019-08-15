import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class IconChild extends StatelessWidget {
  //Properties
  final String text;
  final IconData iconType;
  IconChild({@required this.text, @required this.iconType});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconType,
          color: Colors.white,
          size: 100.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFFD3D0F8),
          ),
        ),
      ],
    );
  }
}
