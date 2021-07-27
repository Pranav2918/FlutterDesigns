import 'package:designs/Screens/Clones/Whatsapp/widgets/users.dart';
import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: profilePicture(users[index]['profileImg']),
            title: Text(
              users[index]['name'],
            ),
            subtitle: Text(users[index]['message']),
            trailing: users[index]['notification'],
          );
        },
      ),
    );
  }
}

Widget profilePicture(String img) {
  return Container(
      height: 55,
      width: 55,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: NetworkImage(img), fit: BoxFit.cover)));
}
