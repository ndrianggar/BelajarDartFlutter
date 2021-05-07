
import 'dart:io';

import '../lib/hero.dart';
import '../lib/monster.dart';
import '../lib/monster_kecoa.dart';
import '../lib/monster_ubur_ubur.dart';
void main(List<String> arguments) {
Hero h = Hero();
Monster m = Monster(); // m setelah kata Monster itu ialah identifier atau nama pendek
// arrtinya identifier itu yang menunjuk kesebuah objek yg ada setelahnya
MonsterKecoa mk = MonsterKecoa();
MonsterUburUbur muu = MonsterUburUbur();

List<Monster> monsters = [];

monsters.add(MonsterUburUbur());
monsters.add(MonsterKecoa());
monsters.add(MonsterUburUbur());