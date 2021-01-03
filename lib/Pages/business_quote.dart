import 'package:flutter/material.dart';

class BusinessQuote extends StatefulWidget {
  @override
  _BusinessQuoteState createState() => _BusinessQuoteState();
}

class _BusinessQuoteState extends State<BusinessQuote> {
  int index1 = 0;

  List<String> quoteImage1 = [
    "images/business1.jpg",
    "images/business2.jpg",
    "images/business3.jpg",
    "images/business4.jpg",
    "images/business5.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tap To Select New Category"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(quoteImage1[index1]),
            fit: BoxFit.fill,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        onPressed: () {
          setState(() {
            index1 = (index1 + 1) % quoteImage1.length;
          });
        },
      ),
    );
  }
}
