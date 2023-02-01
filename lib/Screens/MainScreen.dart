import 'package:designs/Screens/Animations/animation.dart';
import 'package:designs/Screens/Clones/clones.dart';
import 'package:designs/Screens/CustomWidgets/Widgets.dart';
import 'package:designs/Screens/Lists/List.dart';
import 'package:designs/Screens/Location/Travel.dart';
import 'package:designs/Screens/Profile/Profile.dart';
import 'package:designs/Screens/login/Login.dart';
import 'package:designs/services/authservices.dart';
import 'package:flutter/material.dart';

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String githubLink = 'https://github.com/Pranav2918';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Sea of Designs',
            style: TextStyle(
                letterSpacing: 1.0, fontSize: 18, fontWeight: FontWeight.w300),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  AuthService().signOut();
                },
                icon: Icon(
                  Icons.logout,
                  color: Colors.black,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              profileDesign(context),
              listDesigns(context),
              loginDesigns(context),
              travelDesign(context),
              customWidgets(context),
              animationDesigns(context),
              cloneDesigns(context)
            ],
          ),
        ));
  }
}
