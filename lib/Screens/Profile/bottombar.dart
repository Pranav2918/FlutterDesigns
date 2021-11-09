import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: bottomBarWidget());
  }

  Widget bottomBarWidget() {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.graduationCap), label: 'A'),
          BottomNavigationBarItem(
              icon: Icon(Icons.view_carousel_rounded), label: 'B'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'C'),
        ]),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return CupertinoTabView(builder: (context) {
                return CupertinoPageScaffold(child: Class1());
              });
            case 1:
              return CupertinoTabView(builder: (context) {
                return CupertinoPageScaffold(child: Class2());
              });
            case 2:
              return CupertinoTabView(builder: (context) {
                return CupertinoPageScaffold(child: Class3());
              });
            default:
              return CupertinoTabView(builder: (context) {
                return CupertinoPageScaffold(child: Class1());
              });
          }
        });
  }
}

class Class1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Class A', style: TextStyle(color: Colors.red)),
      ),
    );
  }
}

class Class2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Class B',
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}

class Class3 extends StatefulWidget {
  Class3({Key? key}) : super(key: key);

  @override
  State<Class3> createState() => _Class3State();
}

class _Class3State extends State<Class3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Class C')),
    );
  }
}
