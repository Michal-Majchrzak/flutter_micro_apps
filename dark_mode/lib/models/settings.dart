import 'package:flutter/foundation.dart';

class Settings extends ChangeNotifier {
  bool _isDarkMode = false;

  bool get darkMode => _isDarkMode;

  void setDarkMode(bool newValue) {
    _isDarkMode = newValue;
    notifyListeners();
  }
}