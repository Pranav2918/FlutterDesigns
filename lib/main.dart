import 'dart:async';

import 'package:designs/Screens/splash.dart';
import 'package:designs/AuthScreens/loginscreen.dart';
import 'package:designs/services/authservices.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthService().handleAuth(),
      routes: <String, WidgetBuilder>{
        '/Main': (BuildContext context) => LoginScreen()
      },
      theme: ThemeData(primaryColor: Colors.white),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var _duration = new Duration(seconds: 1);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/Main');
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: splashScreen()),
    );
  }
}
