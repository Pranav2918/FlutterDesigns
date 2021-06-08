import 'package:designs/Screens/MainScreen.dart';
import 'package:flutter/material.dart';

class Places extends StatefulWidget {
  @override
  _PlacesState createState() => _PlacesState();
}

class _PlacesState extends State<Places> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: PlacePage(),
        theme: ThemeData(
            primaryColor: Colors.deepOrange[200],
            scaffoldBackgroundColor: Colors.white));
  }
}

class PlacePage extends StatefulWidget {
  @override
  _PlacePageState createState() => _PlacePageState();
}

class _PlacePageState extends State<PlacePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Places',
              style: TextStyle(fontSize: 18, color: Colors.white))),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Lists(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.deepOrange[200],
        selectedItemColor: Colors.white,
        selectedFontSize: 14,
        onTap: (value) {},
        items: [
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Main(),
                        ));
                  },
                  child: Icon(Icons.home)),
              title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.mode_standby_rounded), title: Text('Stay here'))
        ],
      ),
    );
  }
}

class Item {
  final String title;
  final String category;
  final String place;
  final String ratings;
  final String discount;
  final String image;

  Item(
      {this.title,
      this.category,
      this.place,
      this.ratings,
      this.discount,
      this.image});
}

class Lists extends StatelessWidget {
  final List<Item> _data = [
    Item(
        title: 'Girnar',
        category: 'Mountain',
        place: 'Junagadh',
        ratings: '8.0 / 10.0',
        discount: '10%',
        image:
            'https://images.unsplash.com/photo-1579542715623-afaea66a1454?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Z2lybmFyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    Item(
        title: 'Manali',
        category: 'Hill-Station',
        place: 'Kullu-Manali',
        ratings: '6.0 / 10.0',
        discount: '18%',
        image:
            'https://images.unsplash.com/photo-1609920658906-8223bd289001?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFuYWxpfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    Item(
        title: 'Delhi',
        category: 'Indian UT',
        place: 'Delhi',
        ratings: '5.0 / 10.0',
        discount: '0%',
        image:
            'https://images.unsplash.com/photo-1574150723397-44dbd90f3436?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZGVsaGl8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    Item(
        title: 'Mumbai',
        category: 'City of Dreams',
        place: 'Mumbai',
        ratings: '8.0 / 10.0',
        discount: '10%',
        image:
            'https://images.unsplash.com/photo-1562979314-bee7453e911c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bXVtYmFpfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    Item(
        title: 'Wagah Border',
        category: 'IND-PAK Border',
        place: 'Amritsar',
        ratings: '8.0 / 10.0',
        discount: '20%',
        image:
            'https://images.unsplash.com/photo-1598431416007-869a2a727f8b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d2FnYWglMjBib3JkZXJ8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _data.length,
      itemBuilder: (BuildContext context, int index) {
        Item item = _data[index];
        return Card(
          elevation: 3.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: 10, top: 10),
                              height: 50,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color.fromRGBO(244, 244, 244, 0.9),
                              ),
                              child: Center(
                                  child: Text(
                                item.discount + '\nDiscount',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ))),
                        ],
                      )
                    ],
                  ),
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(item.image), fit: BoxFit.cover))),
              SizedBox(width: 15),
              Container(
                //margin: EdgeInsets.only(top: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        child: Center(
                          child: Text('Visit',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                        margin: EdgeInsets.only(bottom: 50),
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(28),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.deepOrange[600],
                                  Colors.deepOrange[300]
                                ]))),
                    Text(item.title,
                        style: TextStyle(
                            fontSize: 22, color: Colors.deepOrange[300])),
                    Text(item.place,
                        style:
                            TextStyle(fontSize: 16, color: Colors.grey[500])),
                    Text(item.category,
                        style:
                            TextStyle(fontSize: 14, color: Colors.blue[500])),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.star_rate_rounded,
                            color: Color.fromRGBO(255, 0, 21, 0.9)),
                        Icon(Icons.star_rate_rounded,
                            color: Color.fromRGBO(255, 0, 21, 0.9)),
                        Icon(Icons.star_rate_rounded,
                            color: Color.fromRGBO(255, 0, 21, 0.9)),
                        Icon(Icons.star_rate_rounded,
                            color: Color.fromRGBO(255, 0, 21, 0.9)),
                        Icon(Icons.star_rate_rounded,
                            color: Color.fromRGBO(255, 0, 21, 0.9))
                      ],
                    ),
                    Text(item.ratings,
                        style: TextStyle(fontSize: 14, color: Colors.green))
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
