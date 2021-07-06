import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Provider Statte Management",
              style: TextStyle(color: Colors.black),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AnimatedContainer(
                  margin: EdgeInsets.all(5),
                  width: 100,
                  height: 100,
                  color: Colors.lightBlue,
                  duration: Duration(milliseconds: 500),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(margin: EdgeInsets.all(5), child: Text("AB")),
                    Switch(
                      value: true,
                      onChanged: (newValue) {},
                    ),
                    Text("LB"),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
