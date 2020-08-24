import 'dart:ui';
import 'package:flutter/material.dart';

class TimeMoney extends StatefulWidget {
  @override
  _TimeMoneyState createState() => _TimeMoneyState();
}

class _TimeMoneyState extends State<TimeMoney> {
  var _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  TextEditingController incomeController = TextEditingController();
  TextEditingController durationController = TextEditingController();
  var result = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Center(
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
                    padding: const EdgeInsets.only(top: 200.0),
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
                      keyboardType: TextInputType.number,
                      controller: incomeController,
                      validator: (String value) {
                        if (value.isEmpty) {
                          return "Please Enter Desired Income";
                        }
                      },
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.black38),
                          hintText: 'Income in Rupees',
                          labelText: "Desired Income",
                          labelStyle: TextStyle(color: Colors.black)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: durationController,
                      validator: (String value) {
                        if (value.isEmpty) {
                          return "Please Enter Desired Income";
                        }
                      },
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.black38),
                          hintText: 'Duration in months',
                          labelText: "Duration",
                          labelStyle: TextStyle(color: Colors.black)),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      setState(
                        () {
                          if (_formKey.currentState.validate()) {
                            this.result = _converter();
                          }
                        },
                      );
                    },
                    child: Text('Calculate'),
                  ),
                  Text(this.result.toString())
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  int _converter() {
    int income = int.parse(incomeController.text);
    int duration = int.parse(durationController.text);
    int money = (income / (duration * 30 * 24)).floor();
    return money;
  }
}
