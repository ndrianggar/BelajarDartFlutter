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

// Named Optional Parameter
// Named OPTIONAL PARAMETER(NAMED PARAMETERS)
// gunakan {} untuk membuat optional - named parameters.


// Contoh definisi fungsi:

// void cetakPesan(String pesan, {int counter:1, String akhirPesan:""}) {
//  for(int i=0; i < counter; i++) {
//    print(pesan + akhirPesan);
//  }
// }

/*
cetakPesan("Hello Dart"); // OK
cetakPesan("Hello Dart", counter:2, akhirPesan:"!"); // OK
cetakPesan("Hello Dart", counter:2); // OK
cetakPesan("Hello Dart", akhirPesan: "!"); // OK, walaupun tidak berurutan
cetakPesan("Hello Dart", akhirPesan: "!", counter: 2); // OK, walaupun tidak sesuai urutan
*/
// void enableFlags({bool bold, bool hidden}){
// ....
//}

// Contoh memanggil fungsi
// enableFlags(bold:true, hidden:false);
//==================================


// OPTIONAL PARAMETER(POSITIONAL PARAMETERS)
// gunakan [] untuk membuat optional - Potional Parameters. / Posisitional Optional Parameter didefenisikan menggunakan kurung siku [] pada saat membuat fungsi
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


/*
Fungsi sebagai First-Class Citizens
Ketika dalam suatu bahasa pemrograman mendukung fungsi sebagai First-Class Citizens, artinya adalah sebagai berikut:
Fungsi dapat diacu (referred) menggunakan namanya didalam program.
Fungsi dapat digunakan sebagai argumen ke fungsi lainnya.
Fungsi dapat dikembalikan sebagai hasil dari fungsi lainnya.
Fungsi dapat digunakan dalam struktur data / Collections.
Empat hal tersebut didukung dalam pemrograman Dart, fungsi dalam dart tidak hanya dipanggil saja tetapi dapat juga dijadikan nilai argumen fungsi lainnya, perhatikan contoh berikut:

void cetakPesan(String pesan, modifPesan) {
  print(modifPesan(pesan));
}

String myModif(String pesan) => pesan + " modifed !";

void main() {
  cetakPesan("Hello", myModif);
}



Pada saat pemanggilan cetakPesan("Hello", myModif);

Maka parameter cetakPesan akan mengacu ke fungsi myModif, dimana fungsi ini memiliki 1 buah parameter.
Sehinga perintah modifPesan(pesan) dapat diterjemahkan menjadi myModif("Hello"), dimana hasilnya adalah "Hello modified !".
Dengan demikan print(modifPesan("Hello") akan mengacu print(myModif("Hello")), dimana hasil dari myModif("Hello") adalah Hello modified !.
Sehingga dapat juga menjadi print("Hello modified !") oleh fungsi cetakPesan. 


Fungsi didalam Fungsi

Dalam pemrograman dart, fungsi dapat juga dideklarasikan dalam fungsi lainnya, perhatikan contoh berikut:

void cetakPesan(String pesan, modifPesan) {
  print(modifPesan(pesan));
}

String myModif(String pesan) => pesan + " modifed !";

void main() {
  cetakPesan("Hello", myModif);
  cetakPesan("Hello", (String s) => s.toUpperCase()); // anonymous fungsi
}

jika kita perhatikan potongan kode

(String s) => s.toUpperCase()

Sepintas ini cukup membingungkan, untuk mengerti anonymous fungsi, cukup mudah, perhatikan contoh berikut:

String capital (String s) => s.toUpperCase(); // fungsi capital

Untuk membuatnya menjadi anonymous fungsi, cukup menghapus nama fungsinya menjadi:

(String s) => s.toUpperCase();

*/
