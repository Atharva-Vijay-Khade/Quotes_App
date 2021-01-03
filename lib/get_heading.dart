import 'package:flutter/material.dart';

Container getHeading() {
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(30),
      child: Text("Select The Quote Type",
          style: TextStyle(
            color: Colors.grey[900],
            fontSize: 20,
            fontStyle: FontStyle.italic,
            letterSpacing: 2.0,
          )),
    ),
  );
}
