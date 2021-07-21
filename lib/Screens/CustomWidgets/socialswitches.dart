import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toggle_switch/toggle_switch.dart';

class SocialSwitches extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        elevation: 5.0,
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: Colors.white,
        child: Center(
          child: Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: Center(
        child: ToggleSwitch(
          minWidth: 90.0,
          minHeight: 70.0,
          initialLabelIndex: 0,
          cornerRadius: 20.0,
          activeFgColor: Colors.white,
          inactiveBgColor: Colors.grey,
          inactiveFgColor: Colors.white,
          totalSwitches: 3,
          icons: [
            FontAwesomeIcons.facebook,
            FontAwesomeIcons.twitter,
            FontAwesomeIcons.instagram
          ],
          iconSize: 30.0,
          borderColor: [
            Color(0xff3b5998),
            Color(0xff8b9dc3),
            Color(0xff00aeff),
            Color(0xff0077f2),
            Color(0xff962fbf),
            Color(0xff4f5bd5)
          ],
          dividerColor: Colors.blueGrey,
          activeBgColors: [
            [Color(0xff3b5998), Color(0xff8b9dc3)],
            [Color(0xff00aeff), Color(0xff0077f2)],
            [
              Color(0xfffeda75),
              Color(0xfffa7e1e),
              Color(0xffd62976),
              Color(0xff962fbf),
              Color(0xff4f5bd5)
            ]
          ],
        ),
      ),
    );
  }
}
