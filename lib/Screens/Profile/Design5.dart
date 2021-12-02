import 'package:designs/utils/sizer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfoilioProfile extends StatelessWidget {
  final String bgImg =
      'https://images.unsplash.com/photo-1551739440-5dd934d3a94a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Y29tcHV0ZXJ8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60';
  final String profileImg =
      'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8cGVvcGxlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(bgImg), fit: BoxFit.cover))),
          Container(
              height: screenSize(context).height,
              width: screenSize(context).width,
              color: Colors.black.withOpacity(0.6)),
          Container(
            margin: EdgeInsets.only(top: 80, left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(profileImg), fit: BoxFit.cover),
                        shape: BoxShape.circle,
                        border: Border.all(width: 5, color: Colors.white))),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Text('Pranav Dave',
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 1.0)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Text('Junagadh, Gujarat',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 1.0)),
                ),
                Container(
                  width: 90,
                  child: Divider(
                    color: Colors.white,
                    height: 10.0,
                    thickness: 2.0,
                  ),
                ),
                Container(
                  width: 300,
                  margin: EdgeInsets.only(top: 15),
                  child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 1.0)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25),
                  child: Text('Projects',
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 1.0)),
                ),
                Container(
                  width: 110,
                  child: Divider(
                    color: Colors.white,
                    height: 10.0,
                    thickness: 2.0,
                  ),
                ),
                Container(
                  width: screenSize(context).width,
                  child: _buildProjectScroller(),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                    width: screenSize(context).width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(64, 64, 64, 0.9),
                              Color.fromRGBO(224, 224, 224, 0.9)
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomLeft)),
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Center(
                        child: Text(
                      'Home'.toUpperCase(),
                      style: TextStyle(
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                          fontSize: 18),
                    )),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

final List projects = [
  {
    'name': 'Flutter Designs',
    'image':
        'https://images.unsplash.com/photo-1537498425277-c283d32ef9db?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Y29tcHV0ZXJ8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'link': 'https://github.com/Pranav2918/FlutterDesigns',
  },
  {
    'name': 'Pokedex',
    'image':
        'https://images.unsplash.com/photo-1542779283-429940ce8336?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cG9rZW1vbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'link': 'https://github.com/Pranav2918/Pokedex',
  },
  {
    'name': 'Solar System',
    'image':
        'https://images.unsplash.com/photo-1543722530-d2c3201371e7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c29sYXIlMjBzeXN0ZW18ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'link': 'https://github.com/Pranav2918/SolarSystem',
  },
  {
    'name': 'Facebook Login',
    'image':
        'https://images.unsplash.com/photo-1432888622747-4eb9a8efeb07?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8ZmFjZWJvb2t8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'link': 'https://github.com/Pranav2918/FacebookLogin',
  },
];

Widget _buildProjectScroller() {
  return Padding(
    padding: const EdgeInsets.only(top: 16.0),
    child: SizedBox.fromSize(
      size: Size.fromHeight(245.0),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: projects.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white.withOpacity(0.3),
              ),
              margin: EdgeInsets.only(right: 10, left: 10),
              height: 100,
              width: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    height: 130,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                            image: NetworkImage(projects[index]['image']),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, left: 15),
                    child: Text(projects[index]['name'],
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            letterSpacing: 1.0,
                            fontWeight: FontWeight.w400)),
                  ),
                  InkWell(
                    onTap: () async {
                      try {
                        await launch(projects[index]['link']);
                      } on Exception catch (e) {
                        print(e);
                      }
                    },
                    child: Container(
                      height: 40,
                      width: 100,
                      margin: EdgeInsets.only(top: 8, left: 15),
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Text(
                          'visit'.toUpperCase(),
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 2.0,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ],
              ));
        },
      ),
    ),
  );
}
