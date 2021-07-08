// Provider state

/* 
  Jika kita membuat aplikasi yg merubah beberapa widget
  ketika dilakukan action, maka perubahan ini perlu metode untuk menerapkannya.
 
  A. Bisa dengan Statefullwidget
  B. Bisa dengan StatelessWidget

  kekurangan pakai yang A ialah mempengaruhi proses perubahan tersebut menjadi beberapa langkah
  
  untuk itu agar menjadi praktis kita menggunakan : 

  1. Membuat share state yang akan menyimpan state / menampung nilai true / false:
     serta memberitahu perubahan2 pada widget2 tsb
  false =  perubahan pada keadaan awal
  true = perubahan pada keadaan yang kedua sesuai keinginan

  2. Mengimplement ChangeNotifierProvider (khusus dart; with. kalau java implement) untuk 
  itu widget2 tsb harus dibungkus dengan metode ini (implement changeNotifier), sehingga
  nanti changeNotifier ini yang akan menyediakan objek dari share state tsb.

  3. Membungkus widget2 dengan widget consumer. Widget consumer a/ berfungsi sebagai menandakan widget2 tsb jika ada perubahan 
   

*/

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'application.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

// menggunakan StatelessWidget ga masalah
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // harus direfactor dengan menambahkan konsep tadi (changeNotifier)
      // sebelum menambahkan widget pastikan sudah menambahkan baris code pada pubspec.yaml provider: ^3.0.0+1
      home: ChangeNotifierProvider<ApplicationColor>(
        create: (context) =>
            ApplicationColor(), // meminta satubuah metode parameter yang bernama BuildContext yang berfungsi mengembalikan changeNotifier
        child: Scaffold(
            appBar: AppBar(
              // suapaya tahu consumer ini menunggu perubahan dimana maka ditambahkan <applicationColor>
              title: Consumer<ApplicationColor>(
                // builder ini yang akan mengembalikan metode (context, namaaplikasi, _ 'bolehkosong / _')
                builder: (context, applicationColor, _) => Text(
                  "Provider Statte Management",
                  // kemudian rubah style sesuai perubahan dalam sharestate yang dikembalikan pada
                  // nama builder (application.color)
                  style: TextStyle(color: applicationColor.color),
                ),
              ),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Consumer<ApplicationColor>(
                    builder: (context, applicationColor, _) =>
                        AnimatedContainer(
                      margin: EdgeInsets.all(5),
                      width: 100,
                      height: 100,
                      color: applicationColor.color,
                      duration: Duration(milliseconds: 500),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(margin: EdgeInsets.all(5), child: Text("AB")),
                      Consumer<ApplicationColor>(
                        builder: (context, applicationColor, _) => Switch(
                          // untuk yang value ini panggil nilai kembalian dan panggil parameter nilai dari parameter tsb(isLightBlue)
                          value: applicationColor.isLightBlue,
                          onChanged: (newValue) {
                            // panggil value kemudian inisiasi dengan nameonchange (newValue)
                            applicationColor.isLightBlue = newValue;
                          },
                        ),
                      ),
                      Container(margin: EdgeInsets.all(5), child: Text("LB")),
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}
