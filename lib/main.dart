import 'package:flutter/material.dart';
import 'local_notifications.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: LocalNotifications(),
    )
  ));
}
