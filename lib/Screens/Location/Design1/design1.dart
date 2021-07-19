import 'package:designs/Screens/Location/Design1/widget/placecard.dart';
import 'package:designs/Screens/Location/Design1/widget/searchbar.dart';
import 'package:flutter/material.dart';

class Design1 extends StatelessWidget {
  static const String person =
      "https://images.unsplash.com/photo-1617331140180-e8262094733a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTF8fGJhYnl8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(244, 244, 244, 0.9),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Hello Traveller!',
                                style: TextStyle(
                                    fontSize: 16, letterSpacing: 1.0)),
                            Text('Where do you want to go?',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 15, top: 15),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(person), fit: BoxFit.cover)))
                ],
              ),
              Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.8),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 7), // changes position of shadow
                        ),
                      ],
                      color: Color.fromRGBO(244, 244, 244, 0.9),
                      borderRadius: BorderRadius.circular(12)),
                  margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: searchBar()),
              Container(
                child: PlaceCard(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
