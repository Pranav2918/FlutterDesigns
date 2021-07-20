import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class CustomToggle extends StatefulWidget {
  @override
  _CustomToggleState createState() => _CustomToggleState();
}

class _CustomToggleState extends State<CustomToggle> {
  bool mode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mode ? Colors.black : Colors.white,
      body: Container(
        child: Center(
            child: LiteRollingSwitch(
          colorOff: Colors.black,
          colorOn: Colors.grey,
          iconOn: Icons.lightbulb_sharp,
          iconOff: Icons.light,
          textOn: 'On',
          textOff: 'Off',
          onTap: () {
            setState(() {
              mode = !mode;
            });
          },
          animationDuration: Duration(milliseconds: 200),
        )),
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
