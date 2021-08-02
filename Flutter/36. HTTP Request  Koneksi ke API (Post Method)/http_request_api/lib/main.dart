import 'package:flutter/material.dart';
export 'postResultModel.dart';
import 'postResultModel.dart';

// untuk menghubungkan pada API ada 3 hal didalam yang harus dilakukan

/* 1. Buat Kelas sebagai model
 * 2. Factory method untuk me-maping dari json objek tsb kepada kelas yang dibuat
 * 3. Method untuk memanggil APInya
 * 4. tambahkan di pubspecyaml pluggin http ^0.12.0+2
 * 
 */


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   PostResult? postResult = null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
            
              Text(postResult != null
                  ? postResult!.id +
                      " | " +
                      postResult!.name +
                      " | " +
                      postResult!.job +
                      " | " +
                      postResult!.created
                  : "tidak ada data"),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(width: 2, color: Colors.blue),
                ),
                onPressed: () {
                  PostResult.connectToAPI("Badu", "Dokter")
                      .then((value) => postResult = value);
                  setState(() {});
                },
                child: Text("Click"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
