import 'package:designs/Screens/MainScreen.dart';

import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GridDesign(),
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
    );
  }
}

class GridDesign extends StatefulWidget {
  @override
  _GridDesignState createState() => _GridDesignState();
}

class _GridDesignState extends State<GridDesign> {
  String img =
      'https://images.unsplash.com/photo-1593844517100-5aced8697e58?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8aGltYWxheWF8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60';

  String grid1 =
      'https://images.unsplash.com/photo-1495287924875-c158d2e8aafc?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDR8Ym84alFLVGFFMFl8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60';

  String grid2 =
      'https://images.unsplash.com/photo-1608059417668-7416ea5ff9e3?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDl8NnNNVmpUTFNrZVF8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60';

  String grid3 =
      'https://images.unsplash.com/photo-1621036961800-c738ecd740a4?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDEwfHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60';

  String grid4 =
      'https://images.unsplash.com/photo-1570295038097-00c219913284?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDV8cm5TS0RId3dZVWt8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60';

  bool onClick1 = false;
  bool onClick2 = false;
  bool onClick3 = false;
  bool onClick4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: Icon(Icons.menu, color: Colors.black),
            title: Text('Home', style: TextStyle(color: Colors.black))),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(img), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(28)),
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Text('Flutter Grids',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          'Shop Now',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      margin: EdgeInsets.only(bottom: 15, left: 15, right: 15),
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28),
                          color: Colors.white),
                    )
                  ],
                ),
              ),
              Container(
                  child: GridView.count(
                shrinkWrap: true,
                primary: false,
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(grid1), fit: BoxFit.cover),
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                    height: 55,
                    width: MediaQuery.of(context).size.width / 2,
                    child: Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              onClick1 = true;
                            });
                          },
                          child: Container(
                              child: Center(
                                child: onClick1
                                    ? Icon(Icons.bookmark)
                                    : Icon(Icons.bookmark_border_outlined),
                              ),
                              margin: EdgeInsets.only(top: 15, left: 15),
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50))),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    height: 55,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(grid2), fit: BoxFit.cover),
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                    child: Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              onClick2 = true;
                            });
                          },
                          child: Container(
                              child: Center(
                                child: onClick2
                                    ? Icon(Icons.bookmark)
                                    : Icon(Icons.bookmark_border_outlined),
                              ),
                              margin: EdgeInsets.only(top: 15, left: 15),
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50))),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 55,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(grid3), fit: BoxFit.cover),
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                    child: Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              onClick3 = true;
                            });
                          },
                          child: Container(
                              child: Center(
                                child: onClick3
                                    ? Icon(Icons.bookmark)
                                    : Icon(Icons.bookmark_border_outlined),
                              ),
                              margin: EdgeInsets.only(top: 15, left: 15),
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50))),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    height: 55,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(grid4), fit: BoxFit.cover),
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                    child: Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              onClick4 = true;
                            });
                          },
                          child: Container(
                              child: Center(
                                child: onClick4
                                    ? Icon(Icons.bookmark)
                                    : Icon(Icons.bookmark_border_outlined),
                              ),
                              margin: EdgeInsets.only(top: 15, left: 15),
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50))),
                        )
                      ],
                    ),
                  ),
                ],
              )),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Main(),
                      ));
                },
                child: Container(
                  child: Center(
                      child: Text('Back',
                          style: TextStyle(color: Colors.white, fontSize: 18))),
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.black),
                ),
              )
            ],
          ),
        ));
  }
}
