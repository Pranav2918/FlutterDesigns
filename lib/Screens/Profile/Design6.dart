import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfoilioProfileTwo extends StatelessWidget {
  static String profileImage =
      'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8cGVvcGxlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        Padding(
          padding: const EdgeInsets.only(right: 35.0, top: 15, bottom: 15),
          child: InkWell(
              onTap: () async {
                await launch('https://github.com/Pranav2918');
              },
              child: FaIcon(FontAwesomeIcons.github)),
        ),
      ], elevation: 0.0),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: profileHeader(profileImage),
            ),
            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(color: Colors.grey.shade200),
              child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature"),
            ),
            Container(
              margin: EdgeInsets.only(left: 16, top: 16),
              child: Text('skills'.toUpperCase(),
                  style: TextStyle(
                      fontSize: 18, letterSpacing: 1.0, color: Colors.black54)),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Divider(height: 5, thickness: 2.0, color: Colors.grey)),
            SizedBox(height: 20),
            skills('Flutter', 0.9),
            SizedBox(height: 5),
            skills('dart', 0.6),
            SizedBox(height: 5),
            skills('git', 0.5),
            SizedBox(height: 5),
            skills('android', 0.7),
            SizedBox(height: 5),
            skills('python', 0.3),
            Container(
              margin: EdgeInsets.only(left: 16, top: 20),
              child: Text('experience'.toUpperCase(),
                  style: TextStyle(
                      fontSize: 18, letterSpacing: 1.0, color: Colors.black54)),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Divider(height: 5, thickness: 2.0, color: Colors.grey)),
            Container(
              child: experience('SoftRefine', '(Feb-2021 to Apr-2021)',
                  'Flutter Developer Intern'),
            ),
            Container(
              child: experience(
                  'SoftRefine', '(May-2021 to Present)', 'Flutter Developer'),
            ),
            Container(
              margin: EdgeInsets.only(left: 16, top: 20),
              child: Text('education'.toUpperCase(),
                  style: TextStyle(
                      fontSize: 18, letterSpacing: 1.0, color: Colors.black54)),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Divider(height: 5, thickness: 2.0, color: Colors.grey)),
            education('B.E (Computer Science)', '2019-2022',
                'Dr. Subhash Technical Campus (GTU)'),
            education('Diploma Engineering', '2016-2019',
                'Dr. Subhash Technical Campus (GTU)'),
            education('10th', '2016', 'Alpha High School (GSEB)'),
            Container(
              margin: EdgeInsets.only(left: 16, top: 20),
              child: Text('Contact'.toUpperCase(),
                  style: TextStyle(
                      fontSize: 18, letterSpacing: 1.0, color: Colors.black54)),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Divider(height: 5, thickness: 2.0, color: Colors.grey)),
            contact('Pranav.18.dave@gmail.com',
                Icon(Icons.email_outlined, color: Colors.red)),
            contact('+91 7016156637', Icon(Icons.phone, color: Colors.blue)),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}

Widget profileHeader(String img) {
  return Row(
    children: <Widget>[
      SizedBox(width: 20.0),
      Container(
          width: 80.0,
          height: 80.0,
          child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.grey,
              child: CircleAvatar(
                  radius: 35.0, backgroundImage: NetworkImage(img)))),
      SizedBox(width: 20.0),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Pranav Dave",
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0),
          ),
          SizedBox(height: 7),
          Text("Flutter Application Developer"),
          SizedBox(height: 5.0),
          Row(
            children: <Widget>[
              Icon(
                FontAwesomeIcons.map,
                size: 12.0,
                color: Colors.black54,
              ),
              SizedBox(width: 10.0),
              Text(
                "Junagadh, Gujarat",
                style: TextStyle(color: Colors.black54),
              ),
            ],
          ),
        ],
      )
    ],
  );
}

Widget skills(String skill, double percent) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 16),
    child: Row(
      children: [
        Expanded(
            child: Text(
          skill.toUpperCase(),
        )),
        SizedBox(width: 10.0),
        Expanded(
          flex: 5,
          child: LinearProgressIndicator(
            color: Colors.red,
            value: percent,
          ),
        ),
      ],
    ),
  );
}

Widget experience(String company, String year, String position) {
  return ListTile(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.circle, size: 15),
      ),
      title: Text(company,
          style: TextStyle(color: Colors.black54, letterSpacing: 1.0)),
      subtitle: Text('$position \t$year'));
}

Widget education(String standard, String year, String clg) {
  return ListTile(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.circle, size: 15),
      ),
      title: Text(clg,
          style: TextStyle(color: Colors.black54, letterSpacing: 1.0)),
      subtitle: Text('$standard\t $year'));
}

Widget contact(String detail, Icon icon) {
  return Container(
    margin: const EdgeInsets.only(left: 16, right: 16, top: 10),
    child: Row(
      children: [
        icon,
        SizedBox(width: 20),
        Text(
          detail,
          style: TextStyle(fontSize: 16),
        ),
      ],
    ),
  );
}
