import 'package:flutter/material.dart';

class FancyButton extends StatelessWidget {
  FancyButton({@required this.onPressed});

  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: Colors.teal,
      splashColor: Colors.pink,
      child: Text('Press Me!'),

    );
  }
}
