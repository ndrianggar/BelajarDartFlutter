/* Inheritence
*
*
*
*
* */

import 'dart:io';

import '../lib/hero.dart';
import '../lib/monster.dart';
import '../lib/monster_kecoa.dart';
import '../lib/monster_ubur_ubur.dart';
void main(List<String> arguments) {
  Hero h = Hero();
  Monster m = MonsterKecoa(); // m setelah kata Monster itu ialah identifier atau nama pendek
  // artinya identifier itu yang menunjuk kesebuah objek yg ada setelahnya
  MonsterKecoa mk = MonsterKecoa();
  MonsterUburUbur muu = MonsterUburUbur();

  List<Monster> monsters = [];

  monsters.add(MonsterUburUbur());
  monsters.add(MonsterKecoa());
  monsters.add(MonsterUburUbur());

  // bisa dengan for standar length
  // for (int i = 0; i < monsters.length; i++) {
  //   print(m.eatHuman());
  // }

  // bisa dengan for mirip for each
  // for (Monster m in monsters) {
  //   print(m.eatHuman());
  // }

  // bisa dengan for inisiasi bisa diluar
  // int nilai = 0;
  // for (; nilai < 3; nilai++) {
  //   print(m.eatHuman());
  // }

  // contoh 1 kasus kalau yang ingin ditampilkan hanya 1 monster ?
  // maka gunakan if(m is namaKelas){}
  for(Monster m in monsters){
    if(m is MonsterUburUbur){ // jangan menggunakan if (identifier == namaKelas)
      print("ubur2 makan " + m.eatHuman());
    }
  }

  monsters.forEach((element) {print(element);}); // bisa melooping dengan keywoard forEach

  // contoh 2 kasus jika ingin menampilkan kelas tertentu tanpa if
  // maka gunakan as

  // print((m as MonsterUburUbur).swim());
  // penjelasan as digunakan untuk menyamakan antara objek 1 dengan objek lain
  // akan tetapi harus dibuat diobjek persamaan tersebut baru diturunkan

  // akan ada error
  /*
    type 'Monster' is not a subtype of type 'MonsterUburUbur' in type cast
    error terjadi karena pada pembuatan objek m itu untuk type monster bukan
    type yang dicari(maksudnya Objek MonsterUbur2)
    -- Solusinya rubah identifier Monster m = Monster() menjadi MonsterUburubur)
    * */

  // CONTOH UNTUK IMPLEMENTASI METHOD KELAS KETIKA DIGUNAKAN DIBANYAK KELAS
  // h.healtPoint = -10;
  // m.healtPoint = 10;
  // mk.healtPoint = 9;
  // muu.healtPoint = -1;


  // print("hero HP: " + h.healtPoint.toString());
  // print("monster HP : " + m.healtPoint.toString());
  // print("monster mk : " + mk.healtPoint.toString());
  // print("monster muu : " + muu.healtPoint.toString());

}
