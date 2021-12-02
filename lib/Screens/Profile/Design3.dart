import 'package:designs/utils/sizer.dart';
import 'package:flutter/material.dart';

class ProfileDesign3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back, color: Colors.white)),
          backgroundColor: Colors.red),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: screenSize(context).width,
              height: screenSize(context).height / 3.5,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Colors.red, Colors.red.shade200])),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.red,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.call,
                              color: Colors.red[100],
                              size: 25,
                            ),
                          ),
                        ),
                        Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://upload.wikimedia.org/wikipedia/en/7/77/Katherine_Langford_as_Hannah_Baker.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                    width: 10,
                                    color: Colors.deepOrange.shade300))),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.red,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.message,
                              color: Colors.red[100],
                              size: 25,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Hanna Baker',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    'Actress, USA',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(top: 10, left: 15),
              child: Text('Email',
                  style: TextStyle(color: Colors.red, fontSize: 14)),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(top: 10, left: 15, bottom: 10),
              child: Text('Hanna@13ry.com',
                  style: TextStyle(color: Colors.grey, fontSize: 18)),
            ),
            Divider(color: Colors.black),
            Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(top: 20, left: 15),
              child: Text('Phone No.',
                  style: TextStyle(color: Colors.red, fontSize: 14)),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(top: 10, left: 15, bottom: 10),
              child: Text('+1 7158647533242',
                  style: TextStyle(color: Colors.grey, fontSize: 18)),
            ),
            Divider(color: Colors.black),
            Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(top: 20, left: 15),
              child: Text('Twitter',
                  style: TextStyle(color: Colors.red, fontSize: 14)),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(top: 10, left: 15, bottom: 10),
              child: Text('@HannaBaker',
                  style: TextStyle(color: Colors.grey, fontSize: 18)),
            ),
            Divider(color: Colors.black),
            Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(top: 20, left: 15),
              child: Text('Series',
                  style: TextStyle(color: Colors.red, fontSize: 14)),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(top: 10, left: 15, bottom: 10),
              child: Text('13 Reasons Why?',
                  style: TextStyle(color: Colors.grey, fontSize: 18)),
            ),
            Divider(color: Colors.black),
            Container(
                margin:
                    EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 20),
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.red, Colors.red.shade200])),
                child: Center(
                    child: Text(
                  'Logout',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )))
          ],
        ),
      ),
    );
  }
}
