import 'package:designs/Screens/Clones/Instagram/widget/instalist.dart';
import 'package:flutter/material.dart';

class InstaBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[Flexible(child: InstaList())],
    );
  }
}
