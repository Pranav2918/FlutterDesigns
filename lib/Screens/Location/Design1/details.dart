import 'dart:ui';
import 'package:designs/Screens/Location/Design1/data/placelist.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final index;

  const Details({Key key, @required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(244, 244, 244, 0.9),
        appBar: AppBar(
          title: Text(
            places[index]['name'],
            style: TextStyle(letterSpacing: 1.0),
          ),
        ),
        body: SingleChildScrollView(
          child: Stack(children: [
            Container(
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(places[index]['image']),
                        fit: BoxFit.cover))),
            Container(
              margin: EdgeInsets.only(top: 100, left: 50),
              height: 155,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white.withOpacity(0.6),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(places[index]['description'],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.0,
                        )),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Text('- ' + places[index]['state'],
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.teal,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.0,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //1...
            Container(
                margin: EdgeInsets.only(top: 280, left: 15),
                height: 200,
                width: 300,
                child: Stack(children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: NetworkImage(places[index]['img1']),
                              fit: BoxFit.cover))),
                  Container(
                    margin: EdgeInsets.only(top: 160),
                    height: 40,
                    width: 300,
                    child: Center(
                      child: Text(places[index]['p1'],
                          style: TextStyle(
                              color: Colors.teal,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.0,
                              fontSize: 18)),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12))),
                  ),
                ])),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: EdgeInsets.only(top: 500, right: 15),
                child: Stack(children: <Widget>[
                  Container(
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: NetworkImage(places[index]['img2']),
                              fit: BoxFit.cover))),
                  Container(
                    margin: EdgeInsets.only(top: 160),
                    height: 40,
                    width: 300,
                    child: Center(
                      child: Text(places[index]['p2'],
                          style: TextStyle(
                              color: Colors.teal,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.0,
                              fontSize: 18)),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12))),
                  ),
                ]),
              ),
            ),

            //3...

            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.only(top: 720, left: 15, bottom: 15),
                child: Stack(children: <Widget>[
                  Container(
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: NetworkImage(places[index]['img3']),
                              fit: BoxFit.cover))),
                  Container(
                    margin: EdgeInsets.only(top: 160),
                    height: 40,
                    width: 300,
                    child: Center(
                      child: Text(places[index]['p3'],
                          style: TextStyle(
                              color: Colors.teal,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.0,
                              fontSize: 18)),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12))),
                  ),
                ]),
              ),
            )
          ]),
        ));
  }
}
