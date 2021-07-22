import 'package:designs/Screens/Location/Design%203/citylist.dart';
import 'package:flutter/material.dart';

Widget homeScreenBottom(BuildContext context) {
  return Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Text("Currently Watched Items",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 15,
                    fontWeight: FontWeight.w700)),
            Container(
                child: Text('View All >',
                    style: TextStyle(
                        color: Colors.blue.withOpacity(0.6),
                        letterSpacing: 1.0,
                        fontSize: 16)))
          ],
        ),
      ),
      Container(
        height: 210,
        child: ListView(scrollDirection: Axis.horizontal, children: cityCards),
      ),
      GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          margin: EdgeInsets.only(top: 25),
          child: Center(
              child: Text(
            'Home'.toUpperCase(),
            style: TextStyle(color: Colors.white, letterSpacing: 1.0),
          )),
          height: 40,
          width: 100,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xfffb53c6), Color(0xffb91d73)]),
              borderRadius: BorderRadius.circular(12)),
        ),
      )
    ],
  );
}
