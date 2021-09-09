import 'package:flutter/material.dart';
import 'package:get_api/user_model.dart';
export 'postResultModel.dart';
import 'postResultModel.dart';

// untuk menghubungkan pada API ada 3 hal didalam yang harus dilakukan

/* 1. Buat Kelas sebagai model
 * 2. Factory method untuk me-maping dari json objek tsb kepada kelas yang dibuat
 * 3. Method untuk memanggil APInya
 * 4. tambahkan di pubspecyaml pluggin http ^0.12.0+2
 * 
 * 
 * catatan : ini berbeda dengan tutor no 36 (tentang post API) perbedaanya ini versi pubspec yaml
 *           pada environment:
              sdk: ">=2.12.0 menjadi >=2.10.0 (versi sblm null safety) 
 */

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult postResult;
  UserModel userModel;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(userModel != null
                  ? userModel.id + " | " + userModel.name

                  // postResult.id +
                  //     " | " +
                  //     postResult.name +
                  //     " | " +
                  //     postResult.job +
                  //     " | " +
                  //     postResult.created
                  : "tidak ada data"),
              // Text(userModel != null ? userModel.id : "id kosong"),
              // Text(userModel != null ? userModel.name : "name kosong"),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(width: 2, color: Colors.blue),
                ),
                onPressed: () {
                  // PostResult.connectToAPI("Badu", "Dokter")
                  //     .then((value) => postResult = value);

                  UserModel.connectToAPI("1").then((value) {
                    userModel = value;
                  });
                  setState(() {});
                },
                child: Text("Get"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
