import 'package:designs/Screens/CustomWidgets/Widgets.dart';
import 'package:designs/Screens/Lists/List.dart';
import 'package:designs/Screens/Location/Travel.dart';
import 'package:designs/Screens/Profile/Profile.dart';
import 'package:designs/Screens/login/Login.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Sea of Designs',
            style: TextStyle(
                letterSpacing: 1.0, fontSize: 18, fontWeight: FontWeight.w300),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              profileDesign(context),
              listDesigns(context),
              loginDesigns(context),
              travelDesign(context),
              customWidgets(context),
            ],
          ),
        ));
  }
}
