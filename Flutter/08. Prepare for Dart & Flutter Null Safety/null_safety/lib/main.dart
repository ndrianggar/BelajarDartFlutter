
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController controller = TextEditingController();
  MyNumber myNumber = MyNumber();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter - Null Safety'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  hintText: 'Insert a number', labelText: 'Number'),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              width: double.infinity,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(width: 2, color: Colors.blue),
                ),
                onPressed: () {
                  setState(() {
                    myNumber.number = int.parse(controller.text);
                  });
                },
                child: Text("Calculate"),
              ),
            ),
            Text('Result: ${myNumber.multipluByTwo()}'),
          ],
        ),
      ),
    );
  }
}

class MyNumber {
  int number = 0;

  // =================cara untuk membuat safety null=======================
 // cara 1
  // dengan menginisiasi dengan 0 atau :
  /* bisa dengan membuat constructor:
  // kemudian menambahkan late pada inisiasi variable cth late int number;
  // late artinya nilai variable kosong dan akan diisi pada constructor
   namaclass(){ field= 1} atau 
   
   namaKelas(this.namafield)
   pada saat pemanggilan objek 
   NamaKelas namaKelas = NamaKelas(0)

cara 2
    pada constructor
     namaclass({ required field}), required artinya harus diisi 

   */
  
  int multipluByTwo() => number * 2;
}
