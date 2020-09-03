import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_rounded_date_picker/rounded_picker.dart';
import 'package:intl/intl.dart';

class Duration extends StatefulWidget {
  @override
  _DurationState createState() => _DurationState();
}

class _DurationState extends State<Duration> {
  DateTime _fromDate = DateTime.now();
  DateTime _toDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    String _updatedFrom = new DateFormat.yMMMd().format(_fromDate);
    String _updatedTo = new DateFormat.yMd().add_jm().format(_toDate);
    String _beginButtonText = "Begin Date of Journey";
    String _endButtonText = "Accomplishment Date";
    return Scaffold(backgroundColor: Colors.deepOrange[300],

          body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 350.0,),
              Text('Challenge Duration'),

              SizedBox(
                width: MediaQuery.of(context).size.width - 20.0,
                child: Text('Choose Duration'),
              ),

              SizedBox(
                width: MediaQuery.of(context).size.width - 20.0,
                child: RaisedButton(
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(7)),
                  highlightColor: Colors.blue,
                  color: Colors.blue[200],
                  child: Text('$_beginButtonText'),
                  onPressed: () async {
                    DateTime _fromDateTime = await showRoundedDatePicker(
                      description: "From",
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(DateTime.now().year),
                      lastDate: DateTime(DateTime.now().year + 45),
                      borderRadius: 50,
                    );
                    if (_fromDateTime != null) {
                      setState(
                        () => _fromDate = _fromDateTime,
                      );
                    }
                  },
                ),
              ),

              Text('$_updatedFrom'),
              
              SizedBox(
                width: MediaQuery.of(context).size.width - 20.0,
                child: RaisedButton(
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(7)),
                  highlightColor: Colors.blue,
                  color: Colors.green[200],
                  child: Text('$_endButtonText'),
                  onPressed: () async {
                    DateTime _toDateTime = await showRoundedDatePicker(
                      description: "To",
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(DateTime.now().year),
                      lastDate: DateTime(DateTime.now().year + 45),
                      borderRadius: 50,
                    );
                    if (_toDateTime != null) {
                      setState(
                        () => _toDate = _toDateTime,
                      );
                    }
                  },
                ),
              ),
              Text('$_updatedTo')
            ],
          ),
        ),
      ),
    );
  }
}

