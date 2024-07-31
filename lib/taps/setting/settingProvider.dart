import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier {
  ThemeMode themMode = ThemeMode.dark;
  String language = 'en';
  void changeTheme(ThemeMode selectedTheme) {
    themMode = selectedTheme;
    notifyListeners();
  }

  void changeLanguage(String lang) {
    language = lang;
    notifyListeners();
  }
}
