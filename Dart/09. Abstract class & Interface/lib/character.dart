class Character {

  int _healtPoint;

  int get healtPoint => _healtPoint;

  set healtPoint(int value) {
    if(value < 0 ){
      value *= -1;
    }
    _healtPoint = value;
  }
}