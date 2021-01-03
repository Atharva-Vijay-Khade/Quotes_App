import 'package:flutter/material.dart';

class SpirutalityQuote extends StatefulWidget {
  @override
  _SpirutalityQuoteState createState() => _SpirutalityQuoteState();
}

class _SpirutalityQuoteState extends State<SpirutalityQuote> {
  int index = 0;

  List<String> quoteImage = [
    "images/spirutality1.jpg",
    "images/spirutality2.jpg",
    "images/spirutality3.jpg",
    "images/spirutality4.jpg",
    "images/spirutality5.jpg",
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
