// PBO a/ sebuah cara/konsep/sudut pandang mengenai bagaimana
// membuat sebuah sistem yang terdiri dari satu atau beberapa objek yang saling berkaitan

// Learning Bahasa arab
// Student
// Ustadz
// Materi

// Class a/ Rancangan dari sebuah objek

// Anggota(Member) dari sebuah class:
// field: apa yang dimiliki oleh class
// Method / Fungsi : apa yang dapat dilakukan oleh class

// Objek a/ Realisasi/bentuk nyata dari sebuah class
// Identifier a/ nama panggilan/nickname/penunjuk/pointer yang kita gunakan untuk mengakses/menggunakan/memanggil objek yang kita miliki.
// ketika sebuah identifier tidak menunjuk pada objek apapun, maka yang ia tunjuk adalah null
// dalam sebuah sistem, sebuah class hanya ada satu. sedangkan objek dari class tersebut dapat lebih dari 1

import 'dart:io';

void main(List<String> arguments) {

  // program prosedural
  // double panjang1, panjang2, lebar1, lebar2;
  // panjang1 = double.tryParse(stdin.readLineSync());
  // lebar1 = double.tryParse(stdin.readLineSync());
  // panjang2 = double.tryParse(stdin.readLineSync());
  // lebar2 = double.tryParse(stdin.readLineSync());
  // print(panjang1 * panjang2 * lebar1 *lebar2);
// ===================================================//

  // CARA IMPLEMENTASI OBJEK
  // dipanggil kelasnya
  // formatnya: namaFungsi identifier (nama aliasnya)

<<<<<<< HEAD
  PersegiPanjang kotak1, kotak2; // ini edentifier setelah namaKelas
=======
  PersegiPanjang kotak1, kotak2;
>>>>>>> origin/master
  double luasKotak1;
  // identifier akan null jika tidak ada objek yang ditunjuk maka akan null
  // contoh
  print(kotak1.toString()); // null

  // cara buat objek supaya tidak null
<<<<<<< HEAD
  kotak1 = new PersegiPanjang(); // artinya kita membuat objek baru di persegi panjang, dan ditunjuk oleh kotak1
=======

  kotak1 = new PersegiPanjang();
>>>>>>> origin/master
  kotak1.panjang = 2; // isi data
  kotak1.lebar =5; // isi data

  kotak2 = PersegiPanjang(); // yang direkomendasikan tanpa new
  kotak2.panjang = double.tryParse(stdin.readLineSync());
  kotak2.lebar = double.tryParse(stdin.readLineSync());

  // penjelasan:
  // new artinya kita buat objek dari kelas persegi panjang
  // lalu ditunjuk dari kotak1
  // new optional bisa ditulis bisa tidak

  // cara ditampung
  luasKotak1 = kotak1.hitungLuas();
  print(luasKotak1);

  // cara tanpa ditambung
  print(luasKotak1 * kotak2.hitungLuas());
}

// keyword namakelas
class PersegiPanjang{
  //field
  double panjang;
  double lebar;

  // method(fungsi)
  double hitungLuas(){
    // tidak perlu dibuat parameter karena ada didalam class
<<<<<<< HEAD
  return this.panjang * this.lebar; // =>    untuk mengakses nama field dari class gunakan this
=======
  return this.panjang * this.lebar;
>>>>>>> origin/master
  // keyword this optional bisa ditulis bisa tidak
  }
}

