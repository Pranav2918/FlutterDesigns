import 'package:designs/Screens/Location/Design%202/design2.dart';
import 'package:designs/Screens/Location/Design%203/design3.dart';
import 'package:designs/Screens/Location/Design1/design1.dart';
import 'package:flutter/material.dart';

Widget travelDesign(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(left: 15, right: 15, top: 15),
    child: Card(
      elevation: 5.0,
      color: Colors.white,
      child: ExpansionTile(
        leading: Icon(
          Icons.location_on,
        ),
        title: Text(
          'Travel Designs',
          style: TextStyle(fontSize: 16, letterSpacing: 1.0),
        ),
        children: [
          GridView.builder(
            shrinkWrap: true,
            primary: false,
            itemCount: travelPages.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, childAspectRatio: 6.5),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              travelPages[index]['navigate']));
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
                        travelPages[index]['name'],
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

final List travelPages = [
  {'name': 'Travel Guide', 'navigate': Design1()},
  {'name': 'Place Info', 'navigate': Design2()},
  {'name': 'Travel Home', 'navigate': TravelHome()},
];
