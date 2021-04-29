import 'package:flutter/material.dart';

void main() {
  runApp(FourApp());
}

class FourApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home Tesk-Center"),
        ),
        body: Center(
          child: Text(
            "Text di tengah",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}
