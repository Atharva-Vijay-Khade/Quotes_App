import 'package:flutter/material.dart';
import 'package:quotes_app/Pages/business_quote.dart';
import 'package:quotes_app/Pages/life_quote.dart';
import 'package:quotes_app/Pages/spirutality_quote.dart';
import 'package:quotes_app/Pages/student_quote.dart';
import 'package:quotes_app/get_heading.dart';
import 'package:quotes_app/get_buttons.dart';
import 'package:quotes_app/get_image.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Quotes(),
      '/StudentQuote': (context) => StudentQuote(),
      '/BusinessQuote': (context) => BusinessQuote(),
      '/SpirutalityQuote': (context) => SpirutalityQuote(),
      '/LifeQuote': (context) => LifeQuote(),
    },
  ));
}

class Quotes extends StatefulWidget {
  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Quotes"),
        backgroundColor: Colors.grey[900],
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          getImage(),
          getHeading(),
          Padding(
            padding: const EdgeInsets.all(60.0),
            child: Divider(
              color: Colors.black,
            ),
          ),
          getButtons(
              context), // vvvvv imp passing context when we are creating a new function
        ],
      ),
    );
  }
}
