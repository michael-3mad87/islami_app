import 'package:flutter/material.dart';

class AppThem {
  static const Color lightPrimary = Color(0xFFB7935F);
  static const Color darkPrimary = Color(0xFF141A2E);
  static const Color gold = Color(0xFFFACC1D);
  static const Color white = Colors.white;
  static const Color black = Color(0xff242424);
  static ThemeData lightThem = ThemeData(
    scaffoldBackgroundColor: Colors.transparent ,
    primaryColor: lightPrimary ,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: lightPrimary ,
      selectedItemColor: black ,
      type: BottomNavigationBarType.fixed ,
      unselectedItemColor: white ,
    )

  );
  static ThemeData darkThem = ThemeData.dark();
}
