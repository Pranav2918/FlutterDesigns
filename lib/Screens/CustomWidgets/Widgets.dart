import 'package:designs/Screens/CustomWidgets/animated_profile.dart';
import 'package:designs/Screens/CustomWidgets/animatedtoggle.dart';
import 'package:designs/Screens/CustomWidgets/socialswitches.dart';
import 'package:designs/Screens/CustomWidgets/toggleSwitch.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

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
              GridView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: widgetPages.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1, childAspectRatio: 6.5),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  widgetPages[index]['navigate']));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(0, 204, 24, 0.9),
                            borderRadius: BorderRadius.circular(8)),
                        height: 40,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  widgetPages[index]['name'],
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      letterSpacing: 1.0),
                                ),
                                IconButton(
                                    onPressed: () async {
                                      try {
                                        await launch(
                                            widgetPages[index]['link']);
                                      } on Exception catch (e) {
                                        print(e);
                                      }
                                    },
                                    icon: FaIcon(FontAwesomeIcons.code,
                                        color: Colors.white, size: 16))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          )));
}

final List widgetPages = [
  {
    'name': 'Custom Toggle',
    'navigate': CustomToggle(),
    'link':
        'https://github.com/Pranav2918/FlutterDesigns/blob/main/lib/Screens/CustomWidgets/toggleSwitch.dart'
  },
  {
    'name': 'Animated Profile Picture',
    'navigate': AnimatedProfile(),
    'link':
        'https://github.com/Pranav2918/FlutterDesigns/blob/main/lib/Screens/CustomWidgets/animated_profile.dart'
  },
  {
    'name': 'Social Toggles',
    'navigate': SocialSwitches(),
    'link':
        'https://github.com/Pranav2918/FlutterDesigns/blob/main/lib/Screens/CustomWidgets/socialswitches.dart'
  },
  {
    'name': 'Animated Toggles',
    'navigate': AnimatedToggle(),
    'link':
        'https://github.com/Pranav2918/FlutterDesigns/blob/main/lib/Screens/CustomWidgets/animatedtoggle.dart'
  },
];
