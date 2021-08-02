import 'package:flutter/material.dart';

final List calls = [
  {
    'name': 'Bill Gates',
    'message': 'Hey there.',
    'time': 'Today, 06:00 PM',
    'profileImg':
        'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcT12cP23udqvCqHW_2oAvK257g3oVQkv23tOumxtpfFOhHi8a5B',
    'callType': callType(
        Icon(Icons.call, color: Color.fromRGBO(7, 94, 84, 0.9), size: 19)),
    'mainCall': mainType(Icon(Icons.call_missed, color: Colors.red, size: 16))
  },
  {
    'name': 'Jeff Bezoz',
    'message': 'I am Owner of amazon',
    'time': 'Today, 06:00 PM',
    'profileImg':
        'https://s3-prod.modernhealthcare.com/s3fs-public/styles/width_375/public/3_Bezos_Jeff_WEB.jpg',
    'callType': callType(
        Icon(Icons.call, color: Color.fromRGBO(7, 94, 84, 0.9), size: 19)),
    'mainCall': mainType(Icon(Icons.call_made, color: Colors.blue, size: 16))
  },
  {
    'name': 'Mukesh Ambani',
    'message': 'I am Gujarati Bussiness Man',
    'time': 'Today, 06:00 PM',
    'profileImg':
        'https://thumbor.forbes.com/thumbor/fit-in/416x416/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5c7d7829a7ea434b351ba0b6%2F0x0.jpg%3Fbackground%3D000000%26cropX1%3D206%26cropX2%3D2043%26cropY1%3D250%26cropY2%3D2089',
    'callType': callType(
        Icon(Icons.call, color: Color.fromRGBO(7, 94, 84, 0.9), size: 19)),
    'mainCall': mainType(Icon(Icons.call_missed, color: Colors.red, size: 16))
  },
  {
    'name': 'Salman Khan',
    'message': 'Hi',
    'time': 'Today, 06:00 PM',
    'profileImg':
        'https://upload.wikimedia.org/wikipedia/commons/thumb/8/86/Salman_Khan_at_Renault_Star_Guild_Awards.jpg/220px-Salman_Khan_at_Renault_Star_Guild_Awards.jpg',
    'callType': callType(Icon(Icons.video_call,
        color: Color.fromRGBO(7, 94, 84, 0.9), size: 19)),
    'mainCall': mainType(Icon(Icons.call_made, color: Colors.blue, size: 16))
  },
];

Widget callType(Icon icon) {
  return Container(child: icon);
}

Widget mainType(Icon icon) {
  return Container(child: icon);
}
