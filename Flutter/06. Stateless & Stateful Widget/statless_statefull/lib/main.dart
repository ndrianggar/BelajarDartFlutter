import 'package:flutter/material.dart';

/* * Widget dibagi menjadi 2: 
 *  1. StateLess yang memiliki widget dimana widget tsb tidak berubah keadaanya
 *  2. Statefullyang memiliki widget dimana widget tsb berubah keadaanya
 *  
 *  state ialah sebuah keadaan, misalnya air bisa ada beberapa keadaan: cair, padat, uap
 * 
 */
void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widget Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(number.toString(), style: TextStyle(fontSize: 10 + number.toDouble()),),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(width: 2, color: Colors.blue),
                ),
                onPressed: () {
                  setState(() {
                    number++;
                  });
                },
                child: Text("Tambah"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
