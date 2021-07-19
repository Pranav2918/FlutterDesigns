import 'package:flutter/material.dart';

Widget searchBar() {
  return TextField(
      cursorColor: Colors.red,
      decoration: InputDecoration(
          hintText: "Find Destination",
          prefixIcon: Icon(Icons.location_on, color: Colors.red),
          border: InputBorder.none));
}
