import 'package:designs/Screens/Clones/Whatsapp/Data/calls.dart';
import 'package:flutter/material.dart';

class CallView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: fab(),
      body: Column(
        children: [
          ListView.builder(
            itemCount: calls.length,
            shrinkWrap: true,
            primary: false,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: callProfilePicture(calls[index]['profileImg']),
                  title: Text(calls[index]['name']),
                  subtitle: Row(
                    children: [
                      calls[index]['mainCall'],
                      SizedBox(width: 6),
                      Text(calls[index]['time'])
                    ],
                  ),
                  trailing:calls[index]['callType']
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

Widget fab() {
  return FloatingActionButton(
      backgroundColor: Color.fromRGBO(37, 211, 102, 0.9),
      onPressed: () {},
      child: Icon(Icons.call, color: Colors.white));
}

Widget callProfilePicture(String img) {
  return Container(
      height: 55,
      width: 55,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: NetworkImage(img), fit: BoxFit.cover)));
}
