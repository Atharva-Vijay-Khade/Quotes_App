import 'package:flutter/material.dart';

class LifeQuote extends StatefulWidget {
  @override
  _LifeQuoteState createState() => _LifeQuoteState();
}

class _LifeQuoteState extends State<LifeQuote> {
  int index = 0;

  List<String> quoteImage = [
    "images/life1.jpg",
    "images/life2.jpg",
    "images/life3.jpg",
    "images/life4.jpg",
    "images/life5.jpg",
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
            image: AssetImage(quoteImage[index]),
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
            index = (index + 1) % quoteImage.length;
          });
        },
      ),
    );
  }
}
