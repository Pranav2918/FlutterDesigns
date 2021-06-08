import 'package:flutter/material.dart';

import 'Design1.dart';
import 'Design2.dart';
import 'Design3.dart';
import 'Design4.dart';

Widget profileDesign(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(left: 15, right: 15, top: 15),
    child: Card(
      color: Colors.black,
      child: ExpansionTile(
        leading: Icon(
          Icons.person,
          color: Colors.teal,
        ),
        title: Text(
          'Progile Design',
          style: TextStyle(fontSize: 16, color: Colors.teal),
        ),
        trailing: Icon(
          Icons.keyboard_arrow_down_rounded,
          color: Colors.teal,
        ),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Design1(),
                        ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 0, 21, 0.9),
                        borderRadius: BorderRadius.circular(8)),
                    margin: EdgeInsets.only(left: 15, top: 15),
                    height: 40,
                    width: MediaQuery.of(context).size.width / 2,
                    child: Center(
                      child: Text(
                        'Desin 1',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Design2()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(0, 204, 24, 0.9),
                        borderRadius: BorderRadius.circular(8)),
                    margin: EdgeInsets.only(right: 15, top: 15),
                    height: 40,
                    width: MediaQuery.of(context).size.width / 2,
                    child: Center(
                      child: Text(
                        'Design 2',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Design3()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 0, 21, 0.9),
                        borderRadius: BorderRadius.circular(8)),
                    margin: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                    height: 40,
                    width: MediaQuery.of(context).size.width / 2,
                    child: Center(
                      child: Text(
                        'Design 3',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Design4()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(0, 204, 24, 0.9),
                        borderRadius: BorderRadius.circular(8)),
                    margin: EdgeInsets.only(right: 15, bottom: 15),
                    height: 40,
                    width: MediaQuery.of(context).size.width / 2,
                    child: Center(
                      child: Text(
                        'Design 4',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
