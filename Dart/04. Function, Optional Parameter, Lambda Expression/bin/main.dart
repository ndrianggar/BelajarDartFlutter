// Fungsi a/ sekumpulan statement/perintah/kode program
// yang independen, memiliki nama, dan bertugas untuk
// melakukan tugas spesifik tertentu.

// fungsi dapat (optional) mengembalikan nilai
// pada pemanggilnya. Jika tidak mengembalikan
// maka tipe pengembaliannya adalah void.

//contoh fungsi
// int add(int num1, int number2){
// return num1 + num2;
// }
// main(List<String> arguments){
// int result;
// result = add(2,3); ==> cara memanggil fungsi
// }

// penjelasan :
// int = tipe kembalian dari fungsi
// add nama fungsi
// return ialah mengembalikan nilai sesuai dengan yang memesan
// num1/2 = parameter fungsi
// result = variable untuk menampung hasil dari fungsi add
// 2,3 = nilai dari parameter

import 'dart:io';

// FUNGSI BIASA
double luasSegiEmpat(double panjang, double lebar){
  return panjang*lebar; // ==> tanpa tampung nilai

  // dengan tampungan
  // double hasil;
  // hasil = panjang*lebar;
  //return hasil;
}

// OPTIONAL PARAMETER(NAMED PARAMETERS)
// gunakan {} untuk membuat optional - named parameters.
// Contoh definisi fungsi:

// void enableFlags({bool bold, bool hidden}){
// ....
//}

// Contoh memanggil fungsi
// enableFlags(bold:true, hidden:false);
//==================================


// OPTIONAL PARAMETER(POSITIONAL PARAMETERS)
// gunakan [] untuk membuat optional - Potional Parameters.
// String say(String from, String messages, [String to, String appName]){
// ....
// }
// penjelasan :
// String from = dari siapa pesannya
// String message = pesannya apa
// [String to, String appName] = optional

//Contoh memanggil fungsi
// say("hendri", "Hello", "ehsan")
// say("hendri", "Hello", "whatsapp")
//==================================



// DEFAULT PARAMETER VALUES
// jika optional parameter tidak diberikan nilai default, maka nilai defaultnya adalah null.
// void enableFlags({bool bold=true, bool hidden=true}){
// ....
// }

//String say(String from, String messages, [String to="somebody", String appName ="chat app"]){
// ...
// }

// contoh :

// NAMED PARAMETERS
String say(String from, String message, {String to, String appName}){
  return from + " say " + message + ((to != null ) ? "to " + to : "") + ((appName !=null) ? " via " + appName : "");
}

// POTIONAL PARAMETERS
String says(String from, String message, [String to, String appName]){
  return from + "say" + message + (( to != null ) ? "to " + to : "") + ((appName !=null) ? " via " + appName : "");
}


// ARROW SYNTAX / LAMBDA EXPRESSION /FAT ARROW EXPRESSION
// Gunakan => untuk menyingkat sebuah fungsi yang mengembalikan nilai menjadi hanya 1 baris perintah
// Contoh:

// int add(int num1, int num2){
// return num1, num2;
// }

// menjadi => int add(int num1, int num2) => num1 +num2;
// perintah yang ada di antara => dan ; hanya boleh berupa expression (perintah/kode program yang memiliki nilai)

// contoh:
double luas_segiempat(double panjang, double lebar)=> panjang * lebar;


// FUNCTION ADALAH FIRST-CLASS OBJECT
//{
// fungsi dapat disimpan dalam sebuah variable/identifier.
// fungsi dapat dimasukkan sebagai parameter.
// fungsi dapat dijadikan sebagai nilai kembalian.
// }


// contoh // fungsi dapat disimpan dalam sebuah variable/identifier.
// Function f;
// f = namaFungsi;


// ANONYMOUS FUNCTION
// Anonymous function adalah fungsi yang tidak memiliki nama.

// Contoh:
// int doMathOperator(int num1, int num2, Function mathFunction){
// return mathFunction(num1, num2);
// }

// main(List<String> arguments){
// print(doMathOperator(1,2(int a, int b){
//  return a+b;
//  }));
// }

// main(List<String> arguments){
// print(doMathOperator(1,2(int a, int b) => return a+b));
// }

// keterangan
// anonymous function pada parametr int a, int b

// contoh
int doMathOperator(int num1, int num2, Function mathFunction){
  return mathFunction(num1, num2);
}

void main(List<String> arguments) {
  double p,l,luas;

  // tanpa inputan user
  luas = luasSegiEmpat(4.3, 6.7);
  print(luas);
  
  // dengan inputan user
  p = double.tryParse(stdin.readLineSync());
  l = double.tryParse(stdin.readLineSync());

  // dengan menampung nilai
  luas = luasSegiEmpat(p, l);
  print(luas);

  // tanpa menampung nilai
  print(luasSegiEmpat(p, l));
  
  
  //========PEMANGGILAN FUNGSI============
  
  // NAMED PARAMETER
  print( say("hendri", "Hello ", to: "Doloris", appName: "whatsapps"));
  // kelebihan named parameter bisa mengisi variable hanya 1

  //POTIONAL PARAMETER
  print(says("hendri", "Hello ", "whatsapps"));

  // LAMBADA EXPRESSION
  print(luas_segiempat(4, 9));

  //ANONYMOUS FUNCTION

  // print biasa
  print(doMathOperator(4, 2, (a,b){
    return a+b;
  }));

  // print lambada expresion
  print(doMathOperator(4, 4, (a,b) => a+b));
}
