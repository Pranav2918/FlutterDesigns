import 'package:flutter/material.dart';

class AnimatedProfile extends StatefulWidget {
  @override
  _AnimatedProfileState createState() => _AnimatedProfileState();
}

class _AnimatedProfileState extends State<AnimatedProfile> {
  final String imageUrl =
      'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8cGVvcGxlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60';

  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Tap...Tap...',
              style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.w300)),
          SizedBox(height: 25),
          Center(
              child: InkWell(
            onTap: () {
              setState(() {
                isHovering = !isHovering;
              });
            },
            child: AnimatedContainer(
                height: isHovering ? 200 : 100,
                width: isHovering ? 200 : 100,
                duration: Duration(milliseconds: 300),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(imageUrl), fit: BoxFit.cover))),
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Center(
          child: Icon(Icons.arrow_back, color: Colors.black),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: Colors.white,
      ),
    );
  }
}
