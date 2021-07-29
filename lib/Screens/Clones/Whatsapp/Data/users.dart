import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final List users = [
  {
    'name': 'Bill Gates',
    'message': 'Hey there.',
    'profileImg':
        'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcT12cP23udqvCqHW_2oAvK257g3oVQkv23tOumxtpfFOhHi8a5B',
    'notification': messageBadge()
  },
  {
    'name': 'Jeff Bezoz',
    'message': 'I am Owner of amazon',
    'profileImg':
        'https://s3-prod.modernhealthcare.com/s3fs-public/styles/width_375/public/3_Bezos_Jeff_WEB.jpg',
    'notification': messageBadge()
  },
  {
    'name': 'Mukesh Ambani',
    'message': 'I am Gujarati Bussiness Man',
    'profileImg':
        'https://thumbor.forbes.com/thumbor/fit-in/416x416/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5c7d7829a7ea434b351ba0b6%2F0x0.jpg%3Fbackground%3D000000%26cropX1%3D206%26cropX2%3D2043%26cropY1%3D250%26cropY2%3D2089',
    'notification': noBadge()
  },
  {
    'name': 'Salman Khan',
    'message': 'Hi',
    'profileImg':
        'https://upload.wikimedia.org/wikipedia/commons/thumb/8/86/Salman_Khan_at_Renault_Star_Guild_Awards.jpg/220px-Salman_Khan_at_Renault_Star_Guild_Awards.jpg',
    'notification': messageBadge()
  },
  {
    'name': 'Akshay Kumar',
    'message': 'Be Fit',
    'profileImg': 'https://static.toiimg.com/photo/msid-81894269/81894269.jpg',
    'notification': noBadge()
  },
  {
    'name': 'Captain America',
    'message': 'I am First Avenger',
    'profileImg':
        'https://m.economictimes.com/thumb/height-450,width-600,imgsize-220108,msid-69139984/captainamerica.jpg',
    'notification': noBadge()
  },
  {
    'name': 'Hulk',
    'message': 'Say Green',
    'profileImg':
        'https://static.independent.co.uk/s3fs-public/thumbnails/image/2012/04/26/18/Untitled-5.jpg?width=982&height=726&auto=webp&quality=75',
    'notification': messageBadge()
  },
  {
    'name': 'Iron Man',
    'message': 'I am Strongest',
    'profileImg':
        'https://www.redwolf.in/image/catalog/designer-Images/themes/iron-man-artist-image.png',
    'notification': messageBadge()
  },
 
];

Widget messageBadge() {
  return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromRGBO(37, 211, 102, 0.9),
      ),
      height: 25,
      width: 25,
      child: Center(
        child: Text('1', style: TextStyle(color: Colors.white)),
      ));
}

Widget noBadge() {
  return Container(height: 1, width: 1, color: Colors.transparent);
}
