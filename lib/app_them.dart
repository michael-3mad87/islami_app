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
      iconTheme: IconThemeData(color: Colors.black)
      
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
      ),
      headlineLarge: TextStyle(
        fontSize: 32 ,
        fontWeight: FontWeight.w400 ,
        color: black,
      ),
      
    ), switchTheme: SwitchThemeData(
        trackColor: MaterialStatePropertyAll(Colors.grey),
        thumbColor: MaterialStatePropertyAll(AppThem.white)
    )
  );
  static  ThemeData darkThem = ThemeData(
    scaffoldBackgroundColor: Colors.transparent ,
    primaryColor: darkPrimary ,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: darkPrimary ,
      selectedItemColor: gold ,
      type: BottomNavigationBarType.fixed ,
      unselectedItemColor: white ,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent ,
      titleTextStyle: TextStyle(fontSize: 30 , fontWeight: FontWeight.w700 , color:white),
      centerTitle: true ,
       iconTheme: IconThemeData(color: Colors.white)
      
    ),
    textTheme: TextTheme(
      headlineSmall:TextStyle(
        fontSize: 25 ,
        fontWeight: FontWeight.w400 ,
        color: white,
      ),
       titleLarge:TextStyle(
        fontSize: 20 ,
        fontWeight: FontWeight.w400 ,
        color: gold,
      ),
        headlineLarge: TextStyle(
        fontSize: 32 ,
        fontWeight: FontWeight.w400 ,
        color: white,
      ) ,
      headlineMedium: TextStyle(
         fontWeight: FontWeight.w400 ,
        color: white,
      )
    ),
    switchTheme: SwitchThemeData(
        trackColor: MaterialStatePropertyAll(AppThem.gold),
    ),
  );
}
