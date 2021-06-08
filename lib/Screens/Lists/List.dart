import 'package:designs/Screens/Lists/Design1.dart';
import 'package:flutter/material.dart';
import 'Design3.dart';
import 'Desing2.dart';

Widget listDesigns(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(left: 15, right: 15, top: 15),
    child: Card(
      color: Colors.black,
      child: ExpansionTile(
        leading: Icon(
          Icons.list_sharp,
          color: Colors.teal,
        ),
        title: Text(
          'List Designs',
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
                          builder: (context) => SchoolList(),
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Grid(),
                        ));
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
                        MaterialPageRoute(builder: (context) => Places()));
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
            ],
          )
        ],
      ),
    ),
  );
}
