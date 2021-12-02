import 'package:designs/utils/sizer.dart';
import 'package:flutter/material.dart';

class LoginDesign1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: screenSize(context).height / 2,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Colors.teal.shade600, Colors.teal.shade200]),
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(150))),
                ),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                          margin: const EdgeInsets.only(top: 100),
                          height: 95,
                          width: 95,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white.withOpacity(0.1))),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Text(
                          'Pranav Dave',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Text(
                          'FlutterDev',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                )
              ],
            ),
            Container(
              height: 40,
              width: screenSize(context).width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: Colors.grey[300]),
              margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 5),
              child: Container(
                margin: EdgeInsets.only(left: 15),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail_outline, color: Colors.teal),
                      border: InputBorder.none,
                      hintText: 'Email',
                      hintStyle: TextStyle(fontSize: 16, color: Colors.teal)),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 8),
              height: 40,
              width: screenSize(context).width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: Colors.grey[300]),
              child: Container(
                margin: EdgeInsets.only(left: 15),
                child: TextField(
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon:
                          Icon(Icons.vpn_key_outlined, color: Colors.teal),
                      border: InputBorder.none,
                      hintText: 'Password',
                      hintStyle: TextStyle(fontSize: 16, color: Colors.teal)),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                  margin: EdgeInsets.only(right: 20, top: 10),
                  child: Text(
                    'Forget Password?',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.grey),
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                  child: Center(
                      child: Text('Back',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16))),
                  margin: EdgeInsets.only(top: 35),
                  height: 40,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      color: Colors.teal)),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'No Account?',
                    style: TextStyle(color: Colors.black.withOpacity(0.5)),
                  ),
                  GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.white,
                        content: Text(
                          'This Is Static Design',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.teal),
                        ),
                        duration: Duration(milliseconds: 800),
                      ));
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.teal.withOpacity(0.7)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
