import 'package:flutter/material.dart';

class StudentQuote extends StatefulWidget {
  @override
  _StudentQuoteState createState() => _StudentQuoteState();
}

class _StudentQuoteState extends State<StudentQuote> {
  int index = 0;

  List<String> quoteImage = [
    "images/student1.jpg",
    "images/student2.jpg",
    "images/student3.jpg",
    "images/student4.jpg",
    "images/student5.jpg",
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
