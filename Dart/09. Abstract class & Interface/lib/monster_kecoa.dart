import 'flying_monster.dart';
import 'monster.dart';

class MonsterKecoa extends Monster implements FlyingMonster{
  @override
  String fly(){
    return "Syuung";
  }

  @override
  String move() {
    return "jalan santai";
    throw UnimplementedError();
  }

  @override
  String eatHuman() {
    // TODO: implement eatHuman
    // return super.eatHuman(); diganti untuk direplace
    return "makan kotoran";
  }
}