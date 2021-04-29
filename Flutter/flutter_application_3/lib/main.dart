import 'package:flutter/material.dart';

void main() {
  runApp(ThreeApp());
}

class ThreeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home - Row"),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text("Kotak 1"),
              color: Colors.brown,
              padding: EdgeInsets.all(16.0),
            ),
            Container(
              child: Text("Kotak 2"),
              color: Colors.yellow,
              padding: EdgeInsets.all(16.0),
            ),
            Container(
              child: Text("Kotak 3"),
              color: Colors.blueAccent,
              padding: EdgeInsets.all(16.0),
            )
          ],
        ),
      ),
    );
  }
}
