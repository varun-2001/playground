import 'package:flutter/material.dart';
import 'package:playground/images.dart';

class PhotosGrid extends StatelessWidget {
  const PhotosGrid({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Photos',
            style: TextStyle(fontSize: 21),
          ),
          
        ],
      ),
    );
  }
}

