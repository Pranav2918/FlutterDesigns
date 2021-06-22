import 'package:designs/Screens/MainScreen.dart';
import 'package:flutter/material.dart';

class ProfileDesign1 extends StatefulWidget {
  @override
  _ProfileDesign1State createState() => _ProfileDesign1State();
}

class _ProfileDesign1State extends State<ProfileDesign1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Colors.black)),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 280,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1621516829665-a5ba55525542?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDI0fHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'))),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(top: 200),
                    height: 40,
                    width: 55,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(28)),
                    child: Center(
                        child: Icon(Icons.camera_alt_outlined,
                            color: Colors.pink)),
                  ),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 15, left: 15, right: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(255, 0, 21, 0.9))),
                  focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(255, 0, 21, 0.9))),
                  labelText: "Name",
                  labelStyle: TextStyle(color: Color.fromRGBO(255, 0, 21, 0.9)),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 15, left: 15, right: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(255, 0, 21, 0.9))),
                  focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(255, 0, 21, 0.9))),
                  labelText: "Profession",
                  labelStyle: TextStyle(color: Color.fromRGBO(255, 0, 21, 0.9)),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 15, left: 15, right: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(255, 0, 21, 0.9))),
                  focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(255, 0, 21, 0.9))),
                  labelText: "Date of Birth",
                  hintText: "18-12-2000",
                  labelStyle: TextStyle(color: Color.fromRGBO(255, 0, 21, 0.9)),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 15, left: 15),
              child: Text('Interest',
                  style: TextStyle(
                      fontSize: 18, color: Color.fromRGBO(0, 0, 0, 0.9))),
            ),
            Container(
              margin: EdgeInsets.only(top: 15, left: 15),
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Container(
                    height: 35,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      color: Colors.red[300],
                    ),
                    child: Center(
                      child: Text(
                        'Technology',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 35,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      color: Colors.red[300],
                    ),
                    child: Center(
                      child: Text(
                        'Designing',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 35,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      color: Colors.grey[400],
                    ),
                    child: Center(
                      child: Text(
                        'Flutter',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 35,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      color: Colors.grey[400],
                    ),
                    child: Center(
                      child: Text(
                        'Wander Lust',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 35,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        border:
                            Border.all(color: Color.fromRGBO(0, 0, 0, 0.9))),
                    child: Center(
                      child: Text('Money',
                          style: TextStyle(fontSize: 14, color: Colors.red)),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 20),
              width: MediaQuery.of(context).size.width,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.pink[300], Colors.pink[800]])),
              child: Center(
                child: Text(
                  'Like Me!',
                  style: TextStyle(
                      fontSize: 15, color: Color.fromRGBO(255, 255, 255, 0.9)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
