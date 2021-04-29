import 'package:flutter/material.dart';

void main() {
  runApp(SixApp());
}

class SixApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home - ICon"),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[Icon(Icons.access_alarm), Text('Alarm')],
              ),
              Column(
                children: <Widget>[Icon(Icons.phone), Text('Phone')],
              ),
              Column(children: <Widget>[Icon(Icons.book), Text('Book')]),
            ],
          ),
        ),
      ),
    );
  }
}
