import 'package:flutter/material.dart';

Widget splashScreen() {
  return Container(
    decoration: BoxDecoration(color: Colors.black),
    child: Stack(
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/logo.jpg')))),
              SizedBox(height: 39.5),
              Container(
                  child: Text(
                'Flutter Designs',
                style: TextStyle(fontSize: 18, color: Colors.white),
              )),
              SizedBox(height: 30),
              Container(
                child: Text('- By Pranav Dave',
                    style: TextStyle(fontSize: 12, color: Colors.white)),
              )
            ],
          ),
        )
      ],
    ),
  );
}
