import 'package:flutter/material.dart';

class Chippy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
              child: Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.grey.shade800,
              child: Text('VS'),
            ),
            deleteIcon: Icon(Icons.delete),
            label: Text('Varun Suvarna'),
            labelPadding: EdgeInsets.all(13.0),
          )),
        ),
      ),
    );
  }
}
