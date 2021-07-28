import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "tombol belum ditekan";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Anonymous Method"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              Text(message),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(width: 2, color: Colors.blue),
                ),
                onPressed: () {
                  setState(() {
                    message = "tombol sudah ditekan";
                  });
                },
                child: Text("Click"),
              ),
            ],
          ),
        ),
      ),
    );
  }

// ini adalah method yang biasa digunakan dan bisa untuk dipanggil berulang kali
  void clickButton() {
    setState(() {
      message = "tombol sudah ditekan";
    });
  }

  /** anonymous methode a yang tidak perlu menuliskan nama dari method tersebut
   * formatnya :
   * (){
   *  isi dari methodnya / setState(){
   *    variable yang mau dicetak
   *  }
   * }
   * 
   */
}
