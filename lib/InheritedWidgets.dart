import 'package:flutter/material.dart';

class InheritedNose extends InheritedWidget { 
  InheritedNose({Key key, this.child}) : super(key: key, child: child);

  final Widget child;

  static InheritedNose of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedNose>();
  }

  @override
  bool updateShouldNotify(InheritedNose oldWidget) {
    return true;
  }
}


//Didn't learn anything about this yet