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
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent ,
      titleTextStyle: TextStyle(fontSize: 30 , fontWeight: FontWeight.w700 , color:black),
      centerTitle: true ,
      
    ),
    textTheme: TextTheme(
      headlineSmall:TextStyle(
        fontSize: 25 ,
        fontWeight: FontWeight.w400 ,
        color: black,
      ),
       titleLarge:TextStyle(
        fontSize: 20 ,
        fontWeight: FontWeight.w400 ,
        color: black,
      )
    )

  );
  static ThemeData darkThem = ThemeData.dark();
}
