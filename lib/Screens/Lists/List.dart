import 'package:designs/Screens/Lists/Design1.dart';
import 'package:designs/utils/sizer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Design3.dart';
import 'Design2.dart';

Widget listDesigns(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(left: 15, right: 15, top: 15),
    child: Card(
      elevation: 5.0,
      color: Colors.white,
      child: ExpansionTile(
        leading: Icon(
          Icons.list_sharp,
        ),
        title: Text(
          'List Designs',
          style: TextStyle(fontSize: 16, letterSpacing: 1.0),
        ),
        children: [
          GridView.builder(
            shrinkWrap: true,
            primary: false,
            itemCount: listPages.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, childAspectRatio: 6.5),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => listPages[index]['navigate']));
                },
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(0, 204, 24, 0.9),
                        borderRadius: BorderRadius.circular(8)),
                    height: 40,
                    width: screenSize(context).width,
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              listPages[index]['name'],
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  letterSpacing: 1.0),
                            ),
                            IconButton(
                                onPressed: () async {
                                  try {
                                    await launchUrl(listPages[index]['link']);
                                  } on Exception catch (e) {
                                    print(e);
                                  }
                                },
                                icon: FaIcon(FontAwesomeIcons.code,
                                    color: Colors.white, size: 16))
                          ],
                        ),
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

final List listPages = [
  {
    'name': 'School List',
    'navigate': SchoolList(),
    'link':
        'https://github.com/Pranav2918/FlutterDesigns/blob/main/lib/Screens/Lists/Design1.dart'
  },
  {
    'name': 'Image Grid',
    'navigate': Grid(),
    'link':
        'https://github.com/Pranav2918/FlutterDesigns/blob/main/lib/Screens/Lists/Design2.dart'
  },
  {
    'name': 'Place List',
    'navigate': Places(),
    'link':
        'https://github.com/Pranav2918/FlutterDesigns/blob/main/lib/Screens/Lists/Design3.dart'
  }
];
