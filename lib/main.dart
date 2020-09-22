import 'dart:ui';
import 'package:playground/detailsWidget.dart';

import 'BoxStuff.dart';
import 'package:playground/photosGrid.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Product-Sans'),
      home: UIChallenge(),
    );
  }
}

class UIChallenge extends StatefulWidget {
  @override
  _UIChallengeState createState() => _UIChallengeState();
}

class _UIChallengeState extends State<UIChallenge> {
  // double w;
  // double h;
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Profile',
            style: TextStyle(color: Colors.black, fontSize: 30.0),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(9, 14, 44, 1),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.chat, size: 30.0, color: Colors.white),
              title: Text(
                'Messages',
                style: TextStyle(color: Colors.white),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book, size: 30.0, color: Colors.white),
              title: Text('Tasks', style: TextStyle(color: Colors.white)),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30.0,
                color: Colors.white,
              ),
              title: Text(
                'Profile',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Container(
                    height: h,
                    width: w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(60),
                            topRight: const Radius.circular(60)),
                        color: Color.fromRGBO(209, 224, 219, 1)),
                  ),
                ),
                Stack(
                  children: [
                    Positioned(
                      child: Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 50.0,
                              backgroundImage: NetworkImage(
                                'https://vignette.wikia.nocookie.net/p__/images/2/28/Mrrobot_s3_cast_rami_malek.jpg/revision/latest?cb=20190605123551&path-prefix=protagonist',
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Diva Kurnia A',
                              style: TextStyle(fontSize: 25.0),
                            ),
                            Text(
                              'UI and UX Designer',
                              style: TextStyle(fontSize: 13),
                            ),
                            SizedBox(
                              height: h / 18,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                BoxStuff('Project', '12+'),
                                BoxStuff('Clients', '15+'),
                                BoxStuff('Status', 'Pro'),
                                BoxStuff('Rate', '9.5/10')
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            DetailsWidget(),
                            PhotosGrid()
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

