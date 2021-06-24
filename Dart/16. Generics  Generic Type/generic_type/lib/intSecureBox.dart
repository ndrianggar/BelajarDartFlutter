// TODO: Put public facing types in this file.

/// Checks if you are awesome. Spoiler: you are.
class IntSecureBox {
  final int _data;
  final String _pin;

  IntSecureBox(this._data, this._pin);

  int getData(String pin) => (pin == _pin) ? _data : null;
}
