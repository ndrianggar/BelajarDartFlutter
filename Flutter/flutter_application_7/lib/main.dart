import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Button"),
          ),
          body: Column(children: <Widget>[
            RaisedButton(
              color: Colors.amberAccent,
              child: Text("RaisedButton"),
              onPressed: () {},
            ),
            MaterialButton(
              color: Colors.cyanAccent,
              child: Text("MaterialButton"),
              onPressed: () {},
            ),
            FlatButton(
              color: Colors.limeAccent,
              child: Text("FlatButton"),
              onPressed: () {},
            ),
          ])),
    );
  }
}
