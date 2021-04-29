import 'dart:io';

import '../lib/Perulangan dan Unary Operator ++.dart';

void main(List<String> arguments) {
  // print(calculate());
  print("=========For=========");

  // perulangan for
  for (int counter=6; counter >5; counter = counter - 4){
    // pada penulisan diatas pada text counter = counter - nilai menjadi
    // counter -=2
    print("halo");
  }

  print("=========While=========");

  // perulangan while
  int i=6;
  while(i<5){
    print("halo ke " + i.toString());
    // pada print ("halo ke " + i" harus ditambahkan toString()
    // karena harus diconvert string
    i +=1; // harus ditambahkan karena jika tidak akan loop dont stop
  }

  print("=========Do While=========");
  int j = 6;

  do{
    print("Do do do ke " + j.toString());
    j +=1;
  }while(j <5);

  // perbedaan while dan do while
  // 1. while mengecek kondisi baru menjalankan
  // 2. do while menjalankan baru mengecek kondisi

  // contoh =========While=========
  // tidak mencetak apapun jika kondisi salah
  // =========Do While=========
  // mencetakan apapun kondisinya minimal 1 eksekusi
  // Do do do ke 6

  //============================//
  // operator increment dan decrement
  // gaya penulisan :

  // Increment (menambahkan)
  // i +=1 => versi lama
  // i++ => versi baru

  // Decrement (mengurangi)
  // i -=1 => versi lama
  // i-- => versi baru

  // contoh increment

  int a,b;
  a =10;
  b=a++;
  print("=========Increment before=========");
  print("a=" + a.toString() + " - " + "b=" + b.toString());

  b=++a;
  print("=========Increment after=========");
  print("a=" + a.toString() + " - " + "b=" + b.toString());
}
