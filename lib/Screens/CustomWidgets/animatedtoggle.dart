import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toggle_switch/toggle_switch.dart';

class AnimatedToggle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
          child: Center(child: Icon(Icons.arrow_back, color: Colors.black)),
          onPressed: () {
            Navigator.pop(context);
          },
          backgroundColor: Colors.white),
      body: Center(
        child: ToggleSwitch(
          minWidth: 90.0,
          minHeight: 70.0,
          initialLabelIndex: 0,
          cornerRadius: 20.0,
          activeFgColor: Colors.white,
          inactiveBgColor: Colors.grey,
          inactiveFgColor: Colors.white,
          totalSwitches: 2,
          icons: [
            FontAwesomeIcons.lightbulb,
            FontAwesomeIcons.solidLightbulb,
          ],
          iconSize: 30.0,
          activeBgColors: [
            [Colors.black45, Colors.black26],
            [Colors.yellow, Colors.orange]
          ],
          animate:
              true, // with just animate set to true, default curve = Curves.easeIn
          curve: Curves
              .bounceInOut, // animate must be set to true when using custom curve
        ),
      ),
    );
  }
}
