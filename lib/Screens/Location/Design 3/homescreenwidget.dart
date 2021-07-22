import 'package:designs/Screens/Location/Design%203/citylist.dart';
import 'package:flutter/material.dart';

final Widget homeScreenBottom = Column(
  children: <Widget>[
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text("Currently Watched Items",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 15,
                  fontWeight: FontWeight.w700)),
          Spacer(),
          Builder(
              builder: (BuildContext context) => Text(
                    "View All",
                    style: TextStyle(
                        fontSize: 14, color: Theme.of(context).primaryColor),
                  ))
        ],
      ),
    ),
    Container(
      height: 210,
      child: ListView(scrollDirection: Axis.horizontal, children: cityCards),
    )
  ],
);
