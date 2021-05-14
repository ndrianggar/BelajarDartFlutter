/* Inheritence
*
*
*
*
* */


      /*Apa perbedaan interface menggunakan implement
      * dan abstract class menggunakan extends
      *
      *
      * */

/*ABSTRACT CLASS
* Sebagai contoh analogi pada bentuk segitiga, kotak, persegi panjang
* ini semua dinamakan dengan bangun datar kenapa karena masing2 memiliki luas
* setiap sesuatu yang menjadi template maka dia abstract class
*
* 1. Bedanya sebuah class hanya bisa extends atau turunan hanya dari 1 class saja
* 2. Bedanya implement bisa diturunkan di banyak class
* */


/*INTERFACE
* ialah kumpulan2 property atau methode yang bukan untuk diturunkan
* tetapi yang harus dimiliki bagi kelas yang mengimplementasikannya
*
* di dart tidak ada interface yang ada abstract class yang dibuat kumpulan2
* property dan method
* */

import '../lib/flying_monster.dart';
import '../lib/monster.dart';
import '../lib/monster_kecoa.dart';
import '../lib/monster_ubur_ubur.dart';
import '../lib/monster_ucoa.dart';

void main(List<String> arguments) {
 //  Monster monsters = Monster(); // sudah tidak dibuat karena sudah menggunakan abstract class
  List<Monster> monsters = [];

  monsters.add(MonsterUburUbur());
  monsters.add(MonsterKecoa());
  monsters.add(MonsterUcoa());

    for(Monster m in monsters){
      // if(m is MonsterUburUbur) {
      //   print("ubur2 sedang : " + m.eatHuman());
      // }else if(m is MonsterKecoa) {
      //   print("Kecoa sedang : " + m.eatHuman());
      if(m is FlyingMonster){
        print((m as FlyingMonster).fly());
      }
      // dari kode diatas akan mencetak
      // Syuung
      // Terbang terbang melayang

    }



}
