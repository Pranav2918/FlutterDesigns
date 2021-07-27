import 'package:flutter/material.dart';

class HeroAnimation extends StatelessWidget {
  final String imgUrl =
      'https://images.unsplash.com/photo-1505118380757-91f5f5632de0?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2VhfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            'Tap & see'.toUpperCase(),
            style: TextStyle(fontSize: 16, letterSpacing: 1.0),
          ),
        ),
        body: Hero(
            tag: "DemoTag",
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HeroDemo()));
              },
              child: Container(
                margin: EdgeInsets.only(top: 55, left: 15),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(imgUrl), fit: BoxFit.cover)),
                height: 100,
                width: 100,
              ),
            )),
      ),
    );
  }
}

class HeroDemo extends StatelessWidget {
  final String imgUrl =
      'https://images.unsplash.com/photo-1505118380757-91f5f5632de0?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2VhfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60';
  const HeroDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0.0,
      //   backgroundColor: Colors.transparent,
      // ),
      body: Hero(
        tag: "DemoTag",
        child: Center(
            child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(imgUrl), fit: BoxFit.cover),
                ))),
      ),
    );
  }
}
