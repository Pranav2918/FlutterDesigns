import 'package:bottomreveal/bottomreveal.dart';
import 'package:flutter/material.dart';

class RevealAnimation extends StatefulWidget {
  @override
  _RevealAnimationState createState() => _RevealAnimationState();
}

class _RevealAnimationState extends State<RevealAnimation> {
  final BottomRevealController _menuController = BottomRevealController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          title: Text(
            'Bottom Reveal',
            style: TextStyle(
                color: Colors.black, letterSpacing: 1.0, fontSize: 16),
          ),
          backgroundColor: Colors.white),
      body: BottomReveal(
        openIcon: Icons.add,
        closeIcon: Icons.close,
        revealWidth: 100,
        revealHeight: 100,
        backColor: Colors.redAccent,
        rightContent: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            MaterialButton(
              minWidth: 0,
              child: Icon(Icons.cloud_circle),
              color: Colors.white,
              elevation: 0,
              onPressed: () {},
            ),
            MaterialButton(
              minWidth: 0,
              child: Icon(Icons.network_wifi),
              color: Colors.white,
              elevation: 0,
              onPressed: () {},
            ),
          ],
        ),
        controller: _menuController,
        body: ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemBuilder: (_, index) => Card(
            child: ListTile(
              title: Text("Item No. $index"),
              leading: Icon(Icons.cloud_circle),
            ),
          ),
        ),
      ),
    );
  }
}
