import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// presequites : tutorial no 19. TextField, no 39 Switch *\
// tambahkan library pubspect yaml shared preference
//  // langkah pertama ialah buat method
// yang kedua ialah buat shared preference

// */

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();
  bool isOn = false;

  // ini method simpan data
  void saveData() async {
    // panggil objek sharedPreferences
    SharedPreferences pref = await SharedPreferences.getInstance();

    // kemudian save data textfield dan switch
    pref.setString("nama", controller.text);
    // pref adalah penunjuk yg dibuat diatas mewakili objek
    // key adalah id dari data yg mau diambil dan boleh diberi nama apa saja
    // value adalah diambil dari identifier dari text field

    pref.setBool("isOn", isOn);
  }

  Future<String> getNama() async {
    SharedPreferences getPref = await SharedPreferences.getInstance();

    // jika menggunakan future (yang mengembalikan nilai maka butuh return)
    return getPref.getString("nama") ?? "no name";
    // kemudian direturn identifier(getPRef) kembalikan nilai string, karena yg
    // diambil adalah string(nama),  lalu berikan tanda ?? (doble questions),
    // agar ketika mereturn kosong tidak mereturn yg diset
  }

  Future<bool> getOn() async {
    SharedPreferences getPrefBool = await SharedPreferences.getInstance();

    return getPrefBool.getBool("isOn") ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: (AppBar(
          title: Text("Shared PReference"),
        )),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextField(
                controller: controller,
              ),
              Switch(
                value: isOn,
                onChanged: (newValue) {
                  setState(() {
                    isOn = newValue;
                  });
                },
              ),
              RaisedButton(
                child: Text("Save"),
                onPressed: () {
                  // panggil method untuk simpan data

                  saveData();
                },
              ),
              RaisedButton(
                child: Text("Load"),
                onPressed: () {
                  getNama().then((s) {
                    controller.text = s;
                  });
                  setState(() {});
                  getOn().then((b) {
                    isOn = b;
                    setState(() {});
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
