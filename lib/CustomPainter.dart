import 'package:flutter/material.dart';


// Needs more Research


final customPaint = CustomPaint(
  // painter: myPainter(),
  // child: SomeWidget(),
);

class MyPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
  }

  @override
  bool shouldRepaint(MyPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(MyPainter oldDelegate) => false;
}