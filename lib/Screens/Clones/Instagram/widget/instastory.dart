import 'package:flutter/material.dart';

class InstaStory extends StatelessWidget {
  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        'Stories',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Row(children: <Widget>[
        Icon(Icons.play_arrow),
        Text('View All', style: TextStyle(fontWeight: FontWeight.bold))
      ])
    ],
  );

  final stories = Expanded(
    child: Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: ListView.builder(
        itemBuilder: (context, index) => new Stack(
          alignment: Alignment.bottomRight,
          children: <Widget>[
            Container(
              height: 80.0,
              width: 80.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1620232224149-25be08bdec08?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
                      fit: BoxFit.fill)),
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
            ),
            index == 0
                ? Positioned(
                    right: 10.0,
                    child: CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                      radius: 10,
                      child: Icon(
                        Icons.add,
                        size: 14.0,
                        color: Colors.white,
                      ),
                    ),
                  )
                : Container()
          ],
        ),
        scrollDirection: Axis.horizontal,
        itemCount: 9,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          topText,
          stories,
        ],
      ),
    );
  }
}
