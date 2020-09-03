import 'package:flutter/material.dart';
// import 'package:playground/time_money_converter.dart';
// import 'package:playground/money.dart';
import 'dart:io';
// import 'datepicker.dart';
import 'package:image_picker/image_picker.dart';
// import 'imagePicker.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MaterialApp(
        home: Scaffold(
          body: GalleryPicker()
        ),
      )));
}
class GalleryPicker extends StatefulWidget {
  @override
  _GalleryPickerState createState() => _GalleryPickerState();
}

class _GalleryPickerState extends State<GalleryPicker> {
  File image;
  Future getImage() async {
    final pickedFile = await ImagePicker.pickImage(
      source: ImageSource.gallery);

    setState(() {
      image = File(pickedFile.path);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: RaisedButton(onPressed: getImage,
      child: Text('Click Me'),),)
    );
  }
}