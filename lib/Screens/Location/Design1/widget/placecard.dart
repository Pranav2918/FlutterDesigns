import 'package:designs/Screens/Location/Design1/data/placelist.dart';
import 'package:designs/Screens/Location/Design1/details.dart';
import 'package:flutter/material.dart';

class PlaceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: places.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Details(index: index),
                ));
          },
          child: Container(
              margin: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: <Widget>[
                  Container(
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: NetworkImage(places[index]['image']),
                              fit: BoxFit.cover))),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: EdgeInsets.only(right: 15, top: 15),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black.withOpacity(0.5)),
                      child: Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            places[index]['places'],
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text('Places',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 11)),
                        ],
                      )),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                        height: 40,
                        width: 100,
                        child: Center(
                            child: Text(
                          places[index]['name'],
                          style: TextStyle(
                            letterSpacing: 1.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.5))),
                  )
                ],
              )),
        );
      },
    );
  }
}
