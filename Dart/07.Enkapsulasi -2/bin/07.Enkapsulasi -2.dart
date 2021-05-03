// ketika kita ingin membuat sebuah program
// dan program memiliki kelas, dan kelas memiliki data yang banyak
// maka tidak perlu kita tampilkan keluar
// untuk itu kita butuh menyembunyikan bagi yang tidak penting

// kita juga harus menjamin keamanan data tersebut, semisal;
// kita punya data integer maka harapan kita data tersebut diinput dengan sesuai type integer
// dengan demikian kita harus mengecek data tsb sesuai atau tidak

// pada hal inilah kita buat program dengan teknik Encapsulation (Pembungkusan)
import 'dart:io';
import 'package:07.Enkapsulasi-2/lib/persegi_panjang.dart';

void main(List<String> arguments) {
  PersegiPanjang kotak1, kotak2;

  kotak1 = new PersegiPanjang(); // artinya kita membuat objek baru di persegi panjang, dan ditunjuk oleh kotak1
  kotak1.panjang = 2; // isi data
  kotak1.lebar =5; // isi data

  kotak2 = PersegiPanjang(); // yang direkomendasikan tanpa new
  kotak2.panjang = double.tryParse(stdin.readLineSync());
  kotak2.lebar = double.tryParse(stdin.readLineSync());
}
