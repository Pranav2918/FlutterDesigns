import 'package:designs/Screens/MainScreen.dart';
import 'package:flutter/material.dart';

class Design2 extends StatefulWidget {
  @override
  _Design2State createState() => _Design2State();
}

class _Design2State extends State<Design2> {
  bool _val1 = false;
  bool _val2 = false;

  bool _val3 = false;
  bool _val4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back)),
            title: Text(
              'My Profile',
              style: TextStyle(fontSize: 15),
            )),
        body: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Stack(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1617040619263-41c5a9ca7521?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Zmx1dHRlcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                          fit: BoxFit.cover)),
                ),
              ),
              Positioned(
                left: MediaQuery.of(context).size.width / 1.9,
                top: MediaQuery.of(context).size.height / 8.8,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(child: Icon(Icons.camera_alt_outlined)),
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 15, top: 35),
            child: Row(
              children: [
                Icon(Icons.notifications, color: Colors.grey),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    'Notifications',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 45),
            child: SwitchListTile(
                activeColor: Colors.indigo[400],
                title: Text(
                  'Email Notification',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                value: _val1,
                onChanged: (value) {
                  setState(() {
                    _val1 = value;
                  });
                }),
          ),
          Container(
            margin: EdgeInsets.only(left: 45),
            child: SwitchListTile(
                activeColor: Colors.indigo[400],
                title: Text(
                  'Push Notification',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                value: _val2,
                onChanged: (value) {
                  setState(() {
                    _val2 = value;
                  });
                }),
          ),
          Container(
              margin: EdgeInsets.only(left: 55),
              child: Divider(height: 2, color: Colors.black)),
          Container(
            margin: EdgeInsets.only(left: 15, top: 35),
            child: Row(
              children: [
                Icon(Icons.person, color: Colors.grey),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    'Privacy',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                )
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 45),
              child: Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Private',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    Radio(
                        activeColor: Colors.indigo[400],
                        value: _val3,
                        groupValue: _val3,
                        onChanged: (value) {
                          setState(() {
                            _val3 = value;
                          });
                        })
                  ],
                ),
              )),
          Container(
              margin: EdgeInsets.only(left: 45),
              child: Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Public',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    // ignore: missing_required_param
                    Radio(
                        activeColor: Colors.indigo[400],
                        groupValue: _val4,
                        onChanged: (value) {
                          setState(() {
                            _val4 = value;
                          });
                        })
                  ],
                ),
              )),
          Container(
              margin: EdgeInsets.only(left: 55),
              child: Divider(height: 2, color: Colors.black)),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 10),
            child: ListTile(
              contentPadding: EdgeInsets.all(0.0),
              leading: Icon(Icons.feedback, color: Colors.grey),
              title: Text('FeedBack', style: TextStyle(fontSize: 14)),
              subtitle: Text('We Would Love To Hear Your Experience',
                  style: TextStyle(fontSize: 12, color: Colors.grey)),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 10),
            child: ListTile(
              contentPadding: EdgeInsets.all(0.0),
              leading: Icon(Icons.info_outline, color: Colors.grey),
              title: Text('Terms & Conditions', style: TextStyle(fontSize: 14)),
              subtitle: Text('Legal,Terms and Conditions',
                  style: TextStyle(fontSize: 12, color: Colors.grey)),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 10),
            child: ListTile(
              contentPadding: EdgeInsets.all(0.0),
              leading: Icon(Icons.logout, color: Colors.grey),
              title: Text('Logout', style: TextStyle(fontSize: 14)),
              subtitle: Text('You can get lost from here',
                  style: TextStyle(fontSize: 12, color: Colors.grey)),
            ),
          )
        ])));
  }
}
