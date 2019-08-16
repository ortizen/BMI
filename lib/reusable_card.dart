import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class ReusableCard extends StatelessWidget {
  // Properties
  final Color color;
  final Widget child;
  final Function tap;

  ReusableCard({@required this.color, this.child, this.tap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        child: child,
        height: 200.0,
        width: 70.0,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
