
abstract class Hero {
  void regulerAttact();
}

// !----------------------------------------------
// ini adalah interface 

abstract class IMagicCaster {
  void castMagic();
}

abstract class IHealer {
  void heal();
}

abstract class IStealer {
  void stealMoney();
}

// !----------------------------------------------

class Thief extends Hero implements IStealer{
  @override
  void regulerAttact() {
    // TODO: implement regulerAttact
  }

  @override
  void stealMoney() {
    // TODO: implement stealMoney
  }

}

// !----------------------------------------------

class WhiteMage extends Hero implements IHealer, IMagicCaster{
  @override
  void castMagic() {
    // TODO: implement castMagic
  }

  @override
  void heal() {
    // TODO: implement heal
  }

  @override
  void regulerAttact() {
    // TODO: implement regulerAttact
  }

}

class BlackMage extends Hero implements IMagicCaster{
  @override
  void castMagic() {
    // TODO: implement castMagic
  }

  @override
  void regulerAttact() {
    // TODO: implement regulerAttact
  }

}