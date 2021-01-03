import 'package:flutter/material.dart';

Container getImage() {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage("images/home.jpg"), fit: BoxFit.fill),
    ),
  );
}
