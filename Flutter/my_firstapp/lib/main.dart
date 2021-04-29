import 'package:flutter/material.dart';

void main() {
  runApp(MyPageHome());
}

class MyPageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Welcome'),
            ),
            body: (Container(
              child: Text('Hello Word'),
              color: Colors.yellow,
              padding: EdgeInsets.all(16.0),
            ))));
  }
}
