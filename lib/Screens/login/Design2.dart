import 'package:flutter/material.dart';

class LoginDesign2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: Stack(
        children: [
          Container(
              height: MediaQuery.of(context).size.height / 2,
              color: Color.fromRGBO(255, 0, 21, 0.9)),
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 8.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Welcome',
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  ),
                ),
                Text('To Designs...',
                    style: TextStyle(color: Colors.white, fontSize: 14))
              ],
            ),
          ),
          Container(
              height: 350,
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: MediaQuery.of(context).size.height / 2.9),
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Text('LOGIN',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 19,
                              letterSpacing: 1.0))),
                  Container(
                      margin: EdgeInsets.only(left: 15, right: 15, top: 15),
                      child: TextFormField(
                        cursorColor: Colors.black,
                        decoration: new InputDecoration(
                            prefixIcon:
                                Icon(Icons.email_outlined, color: Colors.red),
                            border: InputBorder.none,
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.red)),
                            hintText: "Email"),
                      )),
                  Container(
                      margin: EdgeInsets.only(left: 15, right: 15, top: 15),
                      child: TextFormField(
                        cursorColor: Colors.black,
                        decoration: new InputDecoration(
                            prefixIcon: Icon(Icons.vpn_key, color: Colors.red),
                            border: InputBorder.none,
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.red)),
                            hintText: "Password"),
                      )),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 35),
                      height: 40,
                      width: 90,
                      color: Color.fromRGBO(255, 0, 21, 0.9),
                      child: Center(
                          child: Text(
                        'SUBMIT',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.0),
                      )),
                    ),
                  ),
                  InkWell(
                    //   splashColor: Colors.red,
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.white,
                        content: Text(
                          'This Is Static Design',
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(color: Color.fromRGBO(255, 0, 21, 0.9)),
                        ),
                        duration: Duration(milliseconds: 800),
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Text(
                        'Forget Password ?',
                        style: TextStyle(
                            color: Color.fromRGBO(255, 0, 21, 0.9),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
