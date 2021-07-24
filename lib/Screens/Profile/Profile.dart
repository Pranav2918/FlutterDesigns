import 'package:designs/Screens/Profile/Design5.dart';
import 'package:designs/Screens/Profile/Design6.dart';
import 'package:flutter/material.dart';

import 'Design1.dart';
import 'Design2.dart';
import 'Design3.dart';
import 'Design4.dart';

Widget profileDesign(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(left: 15, right: 15, top: 15),
    child: Card(
      elevation: 5.0,
      color: Colors.white,
      child: ExpansionTile(
        leading: Icon(
          Icons.person,
        ),
        title: Text(
          'Progile Design',
          style: TextStyle(fontSize: 16, letterSpacing: 1.0),
        ),
        children: [
          GridView.builder(
            shrinkWrap: true,
            primary: false,
            itemCount: profilePages.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, childAspectRatio: 6.5),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              profilePages[index]['navigate']));
                },
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(0, 204, 24, 0.9),
                        borderRadius: BorderRadius.circular(8)),
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Text(
                        profilePages[index]['name'],
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            letterSpacing: 1.0),
                      ),
                    ),
                  ),
                ),
              );
            },
          )
        ],
      ),
    ),
  );
}

final List profilePages = [
  {'name': 'Dating Profile', 'navigate': ProfileDesign1()},
  {'name': 'Profile Settings', 'navigate': ProfileDesign2()},
  {'name': 'Social Profile', 'navigate': ProfileDesign3()},
  {'name': 'Freelancer Profile', 'navigate': ProfileDesign4()},
  {'name': 'Portfoilio Profile 1', 'navigate': PortfoilioProfile()},
  {'name': 'Portfolio Profile 2', 'navigate': PortfoilioProfileTwo()}
];
