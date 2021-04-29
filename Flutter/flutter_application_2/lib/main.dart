import 'package:flutter/material.dart';

// void main() => runApp(SecondApp()); ==> bisa dengan cara ini

void main() {
  runApp(SecondApp());
}

class SecondApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Home-Column"),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  child: Text("Halo 1"),
                  color: Colors.redAccent,
                  padding: EdgeInsets.all(16.0),
                ),
                Container(
                  child: Text("Halo2"),
                  color: Colors.yellow,
                  padding: EdgeInsets.all(16.0),
                ),
                Container(
                  child: Text("Halo 3"),
                  color: Colors.greenAccent,
                  padding: EdgeInsets.all(16.0),
                ),
              ], 
            ))
            );
            
  }
}
