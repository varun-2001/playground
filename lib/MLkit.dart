// import 'package:flutter/material.dart';
// import 'dart:io';
// import 'dart:async';
// import 'package:firebase_ml_vision/firebase_ml_vision.dart';
// import 'package:image_picker/image_picker.dart';


// //Doesn't really work. Stupid Flutter Channel

// class FacePage extends StatefulWidget {
//   @override
//   _FacePageState createState() => _FacePageState();
// }

// class _FacePageState extends State<FacePage> {
//   File _imageFile;
//   List<Face> _faces;

//   void _getImageAndDetectFaces() async {
//     final imageFile = await ImagePicker.pickImage(source: ImageSource.gallery);
//     final image = FirebaseVisionImage.fromFile(imageFile);
//     final faceDetector = FirebaseVision.instance.faceDetector(
//       FaceDetectorOptions(
//         mode: FaceDetectorMode.accurate,
//       ),
//     );
//     final faces = await faceDetector.detectInImage(image);
//     if (mounted) {
//       setState(() {
//         _imageFile = imageFile;
//         _faces = faces;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Machine Learning Kit'),
//       ),
//       body: Container(),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _getImageAndDetectFaces,
//         tooltip: 'Pick An Image',
//         child: Icon(Icons.image),
//       ),
//     );
//   }
// }

// class ImagesAndFaces extends StatelessWidget {
//   ImagesAndFaces({this.imageFile, this.faces});
//   final File imageFile;
//   final List<Face> faces;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Flexible(
//           flex: 2,
//           child: Container(
//               constraints: BoxConstraints.expand(),
//               child: Image.file(
//                 imageFile,
//                 fit: BoxFit.cover,
//               )),
//         ),
//         Flexible(
//           flex: 1,
//           child: ListView(
//             children: faces.map<Widget>((f) => FaceCoordinates(f)).toList(),
//           ),
//         )
//       ],
//     );
//   }
// }

// class FaceCoordinates extends StatelessWidget {
//   FaceCoordinates(this.face);
//   final Face face;
//   @override
//   Widget build(BuildContext context) {
//     final pos = face.boundingBox;
//     return ListTile(
//       title: Text('(${pos.top}, ${pos.left}, ${pos.bottom},${pos.right}, )'),
//     );
//   }
// }
