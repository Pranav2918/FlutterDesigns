import 'package:flutter/material.dart';

class AnimatedProfile extends StatefulWidget {
  @override
  _AnimatedProfileState createState() => _AnimatedProfileState();
}

class _AnimatedProfileState extends State<AnimatedProfile> {
  bool isHovered = false;

  final String imageUrl =
      'https://images.unsplash.com/photo-1555952517-2e8e729e0b44?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fHBlcnNvbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              isHovered = !isHovered;
            });
          },
          child: AnimatedContainer(
            height: isHovered ? 200 : 100,
            width: isHovered ? 200 : 100,
            curve: Curves.fastOutSlowIn,
            duration: Duration(milliseconds: 300),
            child: Image.network(imageUrl),
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(25.0)),
          ),
        ),
      ),
    );
  }
}
