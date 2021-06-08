import 'package:flutter/material.dart';

class Design4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                  color: Colors.deepOrange,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.2,
                  child: Center(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(top: 55, bottom: 5),
                                height: 85,
                                width: 85,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50))),
                            Container(
                              margin: EdgeInsets.only(top: 39),
                              height: 95,
                              width: 95,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://upload.wikimedia.org/wikipedia/commons/3/33/Cartoon_space_rocket.png'))),
                            )
                          ],
                        ),
                        Text('Pranav Dave',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                letterSpacing: 1.0)),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Text('Junagadh, Gujarat',
                              style: TextStyle(
                                  fontSize: 14,
                                  letterSpacing: 1.0,
                                  color: Colors.white)),
                        ),
                      ],
                    ),
                  )),
              Container(
                margin: EdgeInsets.only(
                    left: 15,
                    right: 15,
                    bottom: 15,
                    top: MediaQuery.of(context).size.height / 2.5),
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    border:
                        Border.all(color: Color.fromRGBO(121, 121, 121, 0.9))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Projects',
                            style: TextStyle(
                                fontSize: 18, color: Colors.deepOrange)),
                        SizedBox(height: 5),
                        Text('06', style: TextStyle(fontSize: 16))
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Following',
                            style: TextStyle(
                                fontSize: 18, color: Colors.deepOrange)),
                        SizedBox(height: 5),
                        Text('1', style: TextStyle(fontSize: 16))
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Followers',
                            style: TextStyle(
                                fontSize: 18, color: Colors.deepOrange)),
                        SizedBox(height: 5),
                        Text('108', style: TextStyle(fontSize: 16))
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 500,
                margin: EdgeInsets.only(
                    left: 15,
                    right: 15,
                    top: MediaQuery.of(context).size.height / 1.85),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    border:
                        Border.all(color: Color.fromRGBO(244, 244, 244, 0.9))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 15, left: 15),
                        child: Text('About Me',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromRGBO(93, 93, 93, 0.9)))),
                    Container(
                      margin: EdgeInsets.only(left: 15, top: 5),
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.location_city_sharp,
                          color: Colors.deepOrange),
                      title: Text('Gujarat',
                          style: TextStyle(
                              fontSize: 18, color: Colors.deepOrange)),
                      subtitle: Text('Junagadh'),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Divider(
                          color: Colors.deepOrange,
                        )),
                    ListTile(
                      leading: Icon(Icons.code_sharp, color: Colors.deepOrange),
                      title: Text('Programming Language',
                          style: TextStyle(
                              fontSize: 18, color: Colors.deepOrange)),
                      subtitle: Text('Dart'),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Divider(
                          color: Colors.deepOrange,
                        )),
                    ListTile(
                      leading: Icon(Icons.qr_code, color: Colors.deepOrange),
                      title: Text('Framework',
                          style: TextStyle(
                              fontSize: 18, color: Colors.deepOrange)),
                      subtitle: Text('Flutter'),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Divider(
                          color: Colors.deepOrange,
                        )),
                    ListTile(
                      leading: Icon(Icons.mail_outline_outlined,
                          color: Colors.deepOrange),
                      title: Text('Email',
                          style: TextStyle(
                              fontSize: 18, color: Colors.deepOrange)),
                      subtitle: Text('pranavdave18@gmail.com'),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Divider(
                          color: Colors.deepOrange,
                        )),
                    ListTile(
                      leading: Icon(Icons.phone_iphone_rounded,
                          color: Colors.deepOrange),
                      title: Text('Phone No.',
                          style: TextStyle(
                              fontSize: 18, color: Colors.deepOrange)),
                      subtitle: Text('7016156637'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          backgroundColor: Colors.deepOrange,
          child: Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}
