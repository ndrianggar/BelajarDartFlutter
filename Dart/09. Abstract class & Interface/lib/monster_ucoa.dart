import 'flying_monster.dart';
import 'monster_ubur_ubur.dart';

class MonsterUcoa extends MonsterUburUbur implements FlyingMonster, BasketPlayer {
 @override
 String fly() {
   return "Terbang terbang melayang";
  }

// misalnya buat abstract kelas untuk implement dibanyak kelas
}
abstract class BasketPlayer{
// tinggal menambahkan di kelas2
}
