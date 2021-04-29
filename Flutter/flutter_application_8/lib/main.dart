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
            title: Text("Aplikasi Login"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),          
            child: Form(
              child: Column(children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(hintText: "Full Name"),
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: "Valid Email"),
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: "Password"),
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: "Confirm Password"),
                ),
                RaisedButton(
                  child: Text("Sign up"),
                  onPressed: () {},
                )
              ]),
            ),
          )),
    );
  }
}
