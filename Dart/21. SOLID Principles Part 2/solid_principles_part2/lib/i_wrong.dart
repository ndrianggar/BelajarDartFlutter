//// WRONG

// disini letak kesalahannya adalah memaksakan kelas akan tetapi kelas tersebut tidak membutuhkan
abstract class IHeroAbility {
  void heal();
  void castMagic();
  void stealMoney();
}

abstract class Hero implements IHeroAbility {
  void regulerAttact();
}

// !----------------------------------------------

class Thief extends Hero {
  @override
  void castMagic() {
    // TODO: do nothing
  }

  @override
  void heal() {
    // TODO: do nothing
  }

  @override
  void regulerAttact() {
    // ...
  }

  @override
  void stealMoney() {
    // ...
  }
}

// !----------------------------------------------

class WhiteMage extends Hero {
  @override
  void castMagic() {
    // ...
  }

  @override
  void heal() {
    // ...
  }

  @override
  void regulerAttact() {
    // ...
  }

  @override
  void stealMoney() {
    // TODO: do nothing
  }
}

// !----------------------------------------------

class BlackMage extends Hero {
  @override
  void castMagic() {
    // ...
  }

  @override
  void heal() {
    // do nothing
  }

  @override
  void regulerAttact() {
    // ...
  }

  @override
  void stealMoney() {
    // do nothing
  }
}
