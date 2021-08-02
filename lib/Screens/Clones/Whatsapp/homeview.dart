import 'package:designs/Screens/Clones/Whatsapp/widgets/callview.dart';
import 'package:designs/Screens/Clones/Whatsapp/widgets/cameraview.dart';
import 'package:designs/Screens/Clones/Whatsapp/widgets/chatlist.dart';
import 'package:designs/Screens/Clones/Whatsapp/widgets/statusview.dart';
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
                CameraView(),
                ChatList(),
                StatusView(),
                CallView()
              ]),
            )));
  }
}

