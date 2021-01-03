import 'package:flutter/material.dart';

Container getButtons(context) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/StudentQuote');
                },
                label: Text("Students"),
                icon: Icon(Icons.assignment_ind_outlined),
              ),
              SizedBox(
                width: 30,
              ),
              RaisedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/BusinessQuote');
                },
                label: Text("Business"),
                icon: Icon(Icons.business_outlined),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/SpirutalityQuote');
                },
                label: Text("spirituality"),
                icon: Icon(Icons.wb_sunny_outlined),
              ),
              SizedBox(
                width: 30,
              ),
              RaisedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/LifeQuote');
                },
                label: Text("Life         "),
                icon: Icon(Icons.nature_people_outlined),
              ),
            ],
          ),
          SizedBox(
            height: 300,
          ),
        ],
      ),
    ),
  );
}
