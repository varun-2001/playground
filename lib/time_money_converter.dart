import 'dart:ui';

import 'package:flutter/material.dart';

class TimeMoney extends StatefulWidget {
  @override
  _TimeMoneyState createState() => _TimeMoneyState();
}

class _TimeMoneyState extends State<TimeMoney> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/time-moneyapp.png"),
                    fit: BoxFit.cover)),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:200.0),
                  child: Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width - 60.0,
                        child: Text(
                      "LET'S BUILD YOUR VERY OWN INCOME PYRAMID",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35.0,
                          fontFamily: 'Roboto'),
                    ),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new TextFormField(
                    obscureText: true ,
                    decoration: InputDecoration(
                      fillColor: Colors.purple,
                      labelText: "Desired Income",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Duration",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
