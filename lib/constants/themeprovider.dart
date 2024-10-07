import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightmode;

  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData) {  // Corrected setter syntax
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightmode) {
      _themeData = darkmode;
    } else {
      _themeData = lightmode;
    }
    notifyListeners(); // Make sure to notify listeners after toggling
  }
}
