import 'dart:ui';

import 'package:flutter/material.dart';

class BoxStuff extends StatelessWidget {
  BoxStuff(this.title, this.value, {this.font1=14, this.font2=14});
  final String title;
  double font1;
  double font2;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            '$title',
            style: TextStyle(fontWeight: FontWeight.w100, fontFamily: 'Roboto', fontSize: font1),
          ),
          Text(
            '$value',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: font2),
          ),
        ],
      ),
    );
  }
}
