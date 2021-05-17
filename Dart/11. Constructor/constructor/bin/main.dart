// import 'package:constructor/constructor.dart' as constructor;
/*
    Constructor a/ method khusus yang pertama kali dipanggil ketika 
    kita membuat objek dari sebuah kelas. 

    - dan nama dari sebuah constructor itu sama dengan nama kelasnya.
    - constructor tidak memiliki type kembalian.



    FUNGSINYA :
    1. Membuat Objek dari kelasnya
    2. Bisa menaruh apapun ketika objek itu dibuat




 */

import 'dart:io';

import 'person.dart';
import 'student.dart';

void main(List<String> arguments) {
  Person person = Person();

  /* pada kata Person(); = artinya ini sama dengan kita memanggil method.
     tetapi method ini bukan method biasa akan tetapi ini memanggil constructor
*/
  // person.name = "jodi"; // contoh ketika blm dibuat constructor

  print(person.name);

  // print('masukkan nilai = ');
  // var input = stdin.readLineSync();

  // print('hasil = ' + input.toString());

  // kelas Student
  person = Student();
  person.name;

  // print(person.name);
}
