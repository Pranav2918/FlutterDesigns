import 'package:flutter/material.dart';

class PlacePopup extends StatelessWidget {
  final List places = [
    {
      'id': 1,
      'name': 'Pokhra',
      'imageUrl':
          'https://media.tacdn.com/media/attractions-splice-spp-674x446/06/96/67/56.jpg'
    },
    {
      'id': 2,
      'name': 'Dharan',
      'imageUrl':
          'https://www.nepaltrekking.com/wp-content/uploads/2019/04/99999-975x540.jpg'
    },
    {
      'id': 3,
      'name': 'Triyuga',
      'imageUrl':
          'https://i2.wp.com/nepalensis.com/wp-content/uploads/2020/04/Triyuga.jpg'
    },
    {
      'id': 4,
      'name': 'Janakpur',
      'imageUrl':
          'https://upload.wikimedia.org/wikipedia/commons/d/d7/Janaki_Mandir_of_Janakpurdham%2C_Nepal.jpg'
    },
    {
      'id': 5,
      'name': 'Patan',
      'imageUrl':
          'https://www.welcomenepal.com/uploads/destination/patan-durbar-square.jpeg'
    },
    {
      'id': 6,
      'name': 'Tansen',
      'imageUrl':
          'https://www.communityhomestay.com/blog/wp-content/uploads/2017/12/Palpa-Nepal-1180x712.jpg'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Text(
              'Well Known Places'.toUpperCase(),
              style: TextStyle(fontSize: 18, letterSpacing: 1.0),
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
              child: GridView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: places.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        height: 155,
                        width: MediaQuery.of(context).size.width / 2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12)),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    NetworkImage(places[index]['imageUrl']))),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12))),
                        margin: EdgeInsets.only(top: 155),
                        height: 50,
                        width: 200,
                        child: Center(
                          child: Text(places[index]['name'],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.0)),
                        ),
                      )
                    ],
                  );
                },
              )),
        ],
      ),
    );
  }
}
