import 'package:flutter/material.dart';
import 'BoxStuff.dart';
class DetailsWidget extends StatelessWidget {
  const DetailsWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(top: 20, left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Personal Details',
            style: TextStyle(fontSize: 21),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(13),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    BoxStuff(
                      'Email',
                      'varunsuvarna@gmail.com',
                      font1: 10,
                      font2: 10,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    BoxStuff(
                      'Mobile',
                      '+919591610505',
                      font1: 10,
                      font2: 10,
                    ),
                  ],
                ),
                Column(
                  children: [
                    BoxStuff(
                      'Membership',
                      '12 July 2020',
                      font1: 10,
                      font2: 10,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    BoxStuff(
                      'Skills',
                      'Figma, Adobe',
                      font1: 10,
                      font2: 10,
                    ),
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.navigate_next),
                  onPressed: null,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
