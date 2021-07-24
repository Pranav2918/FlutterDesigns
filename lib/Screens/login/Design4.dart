import 'package:flutter/material.dart';

class CurvedLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String imgUrl =
        'https://freepngimg.com/thumb/emoji/3-2-love-hearts-eyes-emoji-png-thumb.png';
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        Stack(
          children: [
            Container(
                height: MediaQuery.of(context).size.height / 1.9,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(255, 102, 102, 0.9),
                      Color.fromRGBO(255, 153, 204, 0.9),
                      Color.fromRGBO(204, 255, 229, 0.9)
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(300)))),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(top: 58),
                height: 65,
                width: 65,
                child: Image.network(imgUrl),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                  margin: EdgeInsets.only(top: 220, left: 15),
                  child: Text(
                    'Login'.toUpperCase(),
                    style: TextStyle(
                        color: Colors.white, fontSize: 29, letterSpacing: 1.0),
                  )),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(143, 148, 251, .2),
                          blurRadius: 20.0,
                          offset: Offset(0, 10))
                    ]),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.grey[100]!))),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email or Phone number",
                            hintStyle: TextStyle(color: Colors.grey[400])),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.grey[400])),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height: 40,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 30, right: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(255, 102, 102, 0.9),
                  Color.fromRGBO(255, 153, 204, 0.9),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            child: Center(
              child: Text('cancel'.toUpperCase(),
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.w300)),
            ),
          ),
        )
      ]),
    ));
  }
}
