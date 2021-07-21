import 'package:designs/Screens/CustomWidgets/animated_profile.dart';
import 'package:designs/Screens/CustomWidgets/animatedtoggle.dart';
import 'package:designs/Screens/CustomWidgets/socialswitches.dart';
import 'package:designs/Screens/CustomWidgets/toggleSwitch.dart';
import 'package:flutter/material.dart';

Widget customWidgets(BuildContext context) {
  return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Card(
          elevation: 5.0,
          color: Colors.white,
          child: ExpansionTile(
            leading: Icon(
              Icons.widgets,
            ),
            title: Text(
              'Custom Widgets',
              style: TextStyle(fontSize: 16, letterSpacing: 1.0),
            ),
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CustomToggle(),
                          ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 204, 24, 0.9),
                          borderRadius: BorderRadius.circular(8)),
                      margin: EdgeInsets.only(left: 15, right: 15),
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          'Custom Toggle',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              letterSpacing: 1.0),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AnimatedProfile(),
                          ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 204, 24, 0.9),
                          borderRadius: BorderRadius.circular(8)),
                      margin: EdgeInsets.only(left: 15, right: 15, top: 15),
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          'Animated Profile Picture',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              letterSpacing: 1.0),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SocialSwitches(),
                          ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 204, 24, 0.9),
                          borderRadius: BorderRadius.circular(8)),
                      margin:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          'Social Toggles',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              letterSpacing: 1.0),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AnimatedToggle(),
                          ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 204, 24, 0.9),
                          borderRadius: BorderRadius.circular(8)),
                      margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          'Animated Toggles',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              letterSpacing: 1.0),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )));
}
