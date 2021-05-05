// ketika kita ingin membuat sebuah program
// dan program memiliki kelas, dan kelas memiliki data yang banyak
// maka tidak perlu kita tampilkan keluar
// untuk itu kita butuh menyembunyikan bagi yang tidak penting

// kita juga harus menjamin keamanan data tersebut, semisal;
// kita punya data integer maka harapan kita data tersebut diinput dengan sesuai type integer
// dengan demikian kita harus mengecek data tsb sesuai atau tidak

// pada hal inilah kita buat program dengan teknik Encapsulation (Pembungkusan data)
import 'dart:io';
import '../lib/persegi_panjang.dart';

void main(List<String> arguments) {
PersegiPanjang kotak1, kotak2;

  kotak1 = new PersegiPanjang(); // artinya kita membuat objek baru di persegi panjang, dan ditunjuk oleh kotak1
  kotak1.setPanjang(-2); // tidak bisa diakses jika ditambahkan underscore _ karena harus membuat getter setter
                      // di dart tidak perlu membuat getter setter, cukup dengan properties
  kotak1.lebar =-5; // isi data

  //catatan : jika ingin bisa diakses maka harus membuat prantara (getter / setter)
 // penjelasan berikutnya ada di file persegi_panjang.dart

  kotak2 = PersegiPanjang(); // yang direkomendasikan tanpa new
  kotak2.setPanjang(double.tryParse(stdin.readLineSync()));
  kotak2.lebar = double.tryParse(stdin.readLineSync());

  print(kotak2.luas);
  print(kotak1.getPangjang());

  print(kotak1.lebar); // hanya memanggil property seperti field(data)

}


/*
    Kesimpulan :
    1. yang dijadikan method itu ialah apa yang bisa dilakukan
    kelas tersebut
    2. apa yang dimiliki oleh kelas jadikan field data

    3. contoh pembuatan nama method dengan nama hitungluas(){} ini tidak tepat
    yang tepat adalah luas(){}
 */

// update 05-05-2021