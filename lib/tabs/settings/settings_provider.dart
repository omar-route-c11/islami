import 'package:flutter/material.dart';

class SettingsProvider with ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  String language = 'en';

  bool get isDark => themeMode == ThemeMode.dark;

  String get backgroundImagePath =>
      'assets/images/${isDark ? 'dark_bg' : 'default_bg'}.png';

  void changeTheme(ThemeMode selectedThemeMode) {
    themeMode = selectedThemeMode;
    notifyListeners();
  }

  void changeLanguage(String lang) {
    language = lang;
    notifyListeners();
  }
}
