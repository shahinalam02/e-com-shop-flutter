import 'package:flutter/material.dart';
import 'package:shop_app/theme/theme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = lightTheme;

   bool _isDarkMode = false;

  ThemeData get themeData => _themeData;

  bool get isDarkMode => _isDarkMode;

 set themeData(ThemeData themeData) {
    _themeData = themeData;
    // Update isDarkMode when themeData changes
    _isDarkMode = _themeData == darkTheme;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightTheme) {
      themeData = darkTheme;
    } else {
      themeData = lightTheme;
    }
  }
}
