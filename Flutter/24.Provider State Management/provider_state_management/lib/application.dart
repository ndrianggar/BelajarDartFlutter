import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ApplicationColor with ChangeNotifier {
  bool _isLightBlue = true;

  bool get isLightBlue => _isLightBlue;

  // bool didalamnya adalah nilai yg baru
  set isLightBlue(bool value) {
    _isLightBlue = value;
    notifyListeners(); //=> berfungsi memberitahu widget2 yang nunggu perubahan
  }

  Color get color => (_isLightBlue) ? Colors.lime : Colors.amber;
}
