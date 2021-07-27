import 'package:designs/Screens/Clones/Whatsapp/widgets/chatlist.dart';
import 'package:flutter/material.dart';

class WhatsappClone extends StatefulWidget {
  @override
  _WhatsappCloneState createState() => _WhatsappCloneState();
}

class _WhatsappCloneState extends State<WhatsappClone> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 4,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Color.fromRGBO(7, 94, 84, 0.9),
                title: Text(
                  'WhatsApp',
                  style: TextStyle(color: Colors.white),
                ),
                bottom: TabBar(indicatorColor: Colors.white, tabs: [
                  Tab(
                    icon: Icon(Icons.camera_alt, color: Colors.white),
                  ),
                  Tab(
                    text: 'Chats',
                  ),
                  Tab(
                    text: 'Status',
                  ),
                  Tab(
                    text: 'Calls',
                  )
                ]),
                actions: [
                  Icon(Icons.search, color: Colors.white),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(Icons.more_vert, color: Colors.white),
                  )
                ],
              ),
              body: TabBarView(children: [
                FirstScreen(),
                ChatList(),
                ThirdScreen(),
                FourthScreen()
              ]),
            )));
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        'Camera Soon',
        style: TextStyle(fontSize: 32.0),
      )),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Status Soon',
          style: TextStyle(fontSize: 35.0),
        ),
      ),
    );
  }
}

class FourthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Calls',
          style: TextStyle(fontSize: 35.0),
        ),
      ),
    );
  }
}
