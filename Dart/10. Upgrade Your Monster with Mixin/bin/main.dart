import 'dart:io';

/*10. Upgrade Your Monster with Mixin
* Kesimpulan pelajaran no 09:
*
* pada kelas yang diset sebagai interface maka dia harus
* mengimplementasi behavier (perilaku) dari kelas tersebut
*
* Mixin mirip dengan interface
* Mixin itu menambahkan bukan memaksakan (seperti plugin)
* (formatnya : mixin NamaKelas {} ) dibuat di file terpisah,
* pada kelas yang ingin memixin perilakunya maka harus sebelum keywoard implements dengan keywoard with
*
* jika ingin mengimplementasikan mixin pada satu kelas
*  maka gunakan keyword "on"
*
* cara memanggilnya tinggal melooping dengan for
* for(NamaKelas identifier in pointer){
*
* }
*
* PERBEDAAN INHERITENCE YANG PAKAI EXTENDS DAN INTERFACE YANG PAKAI IMPLEMENTS
* MIXIN DENGAN WITH
*
* 1. Inheritence
*   ==> membagikan behaviour (prilaku) pada kelas turunannya itu hanya
*       bisa 1 saja
*
* 2. Interface
*   ==> memaksakan behaviour (perilaku) yang dimiliki interface tsb
*       kepada kelas yang mengimplementnya (memaksanya) baik ada kode programmnya atau tidak.
*       yang mengimplement kelasnya harus mengoverride semua  methodenya interface (semua kelas bisa mengimplementnnya)
*
* 3. Mixin
* ==> lebih kepada menambahkan behaviour (prilaku) yang dimiliki oleh mixin
*     kepada setiap kelas yang menggunakan keywoard with
*     (setiap kelas bisa memakai mixin, tinggal mwnambahkan keywoard saja)
*
*
*
* */

import '../lib/drinkAbilityMixin.dart';
import '../lib/hero.dart';
import '../lib/monster.dart';
import '../lib/monster_kecoa.dart';
import '../lib/monster_ubur_ubur.dart';
import '../lib/monstert_ucoa.dart';

void main(List<String> argument){
  List<Monster> monsters = [];

  monsters.add(MonsterUburUbur());
  monsters.add(MonsterKecoa()); // => yang dipasang mixin
  monsters.add(MonsterUcoa()); // => yang dipasang mixin

  for(Monster m in monsters){
    if(m is DrinkAbilityMixin){
      print((m as DrinkAbilityMixin).drink());
    }
  }

}

