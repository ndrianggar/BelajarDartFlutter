import 'monster.dart';

class MonsterUburUbur extends Monster{
  String swim() => "woosh.. woosh";

  @override
  String move() {
    return "Bergerak gerak";
    throw UnimplementedError();
  }

  @override
  String eatHuman() {
    // TODO: implement eatHuman
    // return super.eatHuman(); digantikan atau direplace
    return "sedot-sedot";

    /*Penjelasan
    * return memanggil methode human dari super
    * super ialah kelas parent dari monster_ubur2
    * yaitu kelas monster
    *
    * */
  }
}