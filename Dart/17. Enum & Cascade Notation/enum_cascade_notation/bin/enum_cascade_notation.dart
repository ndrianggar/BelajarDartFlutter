/*
  enum adalah dibuat untuk mewakili pilihan - pilihan 

  format pembuatannya

  keywoardEnum Function enum{pilihan,pilihan,pilihan}

 */

/*
    cascade notation adalah 
    format penulisan hanya menggunakan (..) => titik2

 */

void main(List<String> arguments) {
  // print('Hello world!');
  MonsterUcoa m = MonsterUcoa(status: UcoaStatus.normal);
  // jika kita membuat printah print pada baris dan memotong perintah
  // di bawahnya, maka butuh pengetikan identifier yang mewakili objek (misalnya: MonsterUcoa m )
  // maka harus menuliskan huruf m
  print('hello muslim');

  m
    ..move() // penulisan ini disebut ascade notaion
    ..eat();

  // format penulisan biasa
  // m.move();
  // m.eat();

  // cascade notation
  // ..move();
  // ..eat();
}

enum UcoaStatus { normal, poisoned, confused }

class MonsterUcoa {
  // final int status; // 1: Normal; 2: Poisoned(racun); 3: Confused

  final UcoaStatus status;
  MonsterUcoa({this.status = UcoaStatus.normal});

  void move() {
    switch (status) {
      case UcoaStatus.normal:
        print('Ucoa is moving');
        break;
      case UcoaStatus.poisoned:
        print('Ucoa cannot move. Ucoa is dying. Ucoa needs help. ');
        break;
      case UcoaStatus.confused:
        print('Ucoa is Spinning. Dart languange is confused');
        break;
      default:
    }
  }

  void eat() {
    print('ucoa is eating indomie');
  }
}
