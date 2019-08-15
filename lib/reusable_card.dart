import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class ReusableCard extends StatelessWidget {
  // Properties
  final Color color;
  final Widget child;

  ReusableCard({@required this.color, this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
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
