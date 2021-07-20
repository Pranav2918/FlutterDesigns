import 'package:designs/Screens/Location/Design%202/carousel.dart';
import 'package:designs/Screens/Location/Design%202/placepopup.dart';
import 'package:flutter/material.dart';

class Design2 extends StatelessWidget {
  final String img =
      "https://images.unsplash.com/photo-1586100345684-a135906ef03c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTF8fG5lcGFsfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          // appBar: AppBar(
          //   backgroundColor: Colors.transparent,
          //   elevation: 0.0,
          // ),
          body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(img), fit: BoxFit.cover))),
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                  top: 40,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Discover Nepal',
                        style: TextStyle(
                            letterSpacing: 1.0,
                            fontSize: 34,
                            color: Colors.white,
                            fontWeight: FontWeight.w300)),
                    Text('Heaven is myth, NEPAL is real',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold))
                  ],
                )),
            Container(
              margin: EdgeInsets.only(top: 130),
              child: Column(
                children: [
                  Text('Top Rated'.toUpperCase(),
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Container(
                    color: Colors.white.withOpacity(0.2),
                    margin: EdgeInsets.only(left: 15, right: 15),
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                        margin: EdgeInsets.only(top: 25),
                        child: ImageCarousel()),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        margin: EdgeInsets.only(left: 15, top: 15),
                        child: Text('Places To Visit'.toUpperCase(),
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.w400))),
                  ),
                  Wrap(
                    runAlignment: WrapAlignment.center,
                    alignment: WrapAlignment.center,
                    spacing: 20.0,
                    children: <Widget>[
                      Chip(
                          backgroundColor: Color.fromRGBO(255, 0, 21, 0.9),
                          label: Text(
                            'Kathmandu'.toUpperCase(),
                            style: TextStyle(color: Colors.white),
                          )),
                      Chip(
                          label: Text(
                        'Everest Base Camp'.toUpperCase(),
                      )),
                      Chip(
                          label: Text(
                        'Manaslu'.toUpperCase(),
                      )),
                      Chip(
                          label: Text(
                        'Bhaktapur'.toUpperCase(),
                      )),
                      Chip(
                          label: Text(
                        'Bodhnath'.toUpperCase(),
                      )),
                      Chip(
                          label: Text(
                        'Butwal'.toUpperCase(),
                      )),
                      Chip(
                          label: Text(
                        'Annapurna'.toUpperCase(),
                      )),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return PlacePopup();
                            },
                          );
                        },
                        child: Chip(
                            backgroundColor: Colors.blue,
                            label: Text('+ 6 more'.toUpperCase(),
                                style: TextStyle(color: Colors.white))),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12)),
                      margin: EdgeInsets.only(top: 25, bottom: 15),
                      height: 40,
                      width: 100,
                      child: Center(
                        child: Text('Back'.toUpperCase(),
                            style: TextStyle(
                                letterSpacing: 1.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
