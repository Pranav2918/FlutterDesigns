import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class CustomToggle extends StatefulWidget {
  @override
  _CustomToggleState createState() => _CustomToggleState();
}

class _CustomToggleState extends State<CustomToggle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: ToggleSwitch(
            minWidth: 90.0,
            cornerRadius: 20.0,
            activeBgColors: [
              [Color.fromRGBO(0, 204, 24, 0.9)],
              [Color.fromRGBO(255, 0, 21, 0.9)]
            ],
            activeFgColor: Colors.white,
            inactiveBgColor: Colors.grey,
            inactiveFgColor: Colors.white,
            initialLabelIndex: 1,
            customTextStyles: [
              TextStyle(
                  letterSpacing: 1.0,
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  color: Colors.white),
              TextStyle(
                  letterSpacing: 1.0,
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  color: Colors.white)
            ],
            totalSwitches: 2,
            labels: ['ON', 'OFF'],
            radiusStyle: true,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
    );
  }
}
