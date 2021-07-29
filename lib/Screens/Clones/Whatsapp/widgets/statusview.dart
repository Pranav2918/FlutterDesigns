import 'package:designs/Screens/Clones/Whatsapp/Data/statusList.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String imgUrl =
        'https://cdn.vox-cdn.com/thumbor/dvMjjuYxDWDh0E9bZGOrx7ZtJP8=/1400x1050/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/9490719/thor_big.jpg';
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              title: Text('Your Status'),
              subtitle: Text('Tap to add status'),
              leading: profilePicture(imgUrl),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 15),
              child:
                  Text('Recent Updates', style: TextStyle(color: Colors.grey)),
            ),
            statusList()
          ],
        ),
      ),
      floatingActionButton: fabButtons(),
    );
  }
}

Widget profilePicture(String img) {
  return Stack(
    children: [
      Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(img), fit: BoxFit.cover))),
      Positioned(
        top: 35,
        left: 35,
        child: Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
              color: Color.fromRGBO(37, 211, 102, 0.9), shape: BoxShape.circle),
          child: Center(
            child: Icon(
              Icons.add,
              size: 15,
              color: Colors.white,
            ),
          ),
        ),
      )
    ],
  );
}

Widget statusList() {
  return Container(
    child: ListView.builder(
        itemCount: status.length,
        shrinkWrap: true,
        primary: false,
        itemBuilder: (context, index) {
          return ListTile(
              leading: statusPicture(status[index]['profileImg']),
              title: Text(status[index]['name']),
              subtitle: Text(status[index]['time']));
        }),
  );
}

Widget statusPicture(String img) {
  return Container(
      height: 55,
      width: 55,
      decoration: BoxDecoration(
          border:
              Border.all(color: Color.fromRGBO(37, 211, 102, 0.9), width: 2),
          shape: BoxShape.circle,
          image: DecorationImage(image: NetworkImage(img), fit: BoxFit.cover)));
}

Widget fabButtons() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      Container(
        height: 45,
        width: 45,
        child: FloatingActionButton(
          backgroundColor: Colors.grey.shade700,
          onPressed: () {},
          child: FaIcon(FontAwesomeIcons.pen, color: Colors.white,size: 18,),
        ),
      ),
      SizedBox(height: 15),
      FloatingActionButton(
        backgroundColor: Color.fromRGBO(37, 211, 102, 0.9),
        onPressed: () {},
        child: Icon(Icons.camera_alt, color: Colors.white),
      )
    ],
  );
}
