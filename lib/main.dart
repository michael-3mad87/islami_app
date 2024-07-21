import 'package:flutter/material.dart';
import 'package:islami_app/app_them.dart';
import 'package:islami_app/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName:(context) => HomeScreen() ,
      },
      initialRoute: HomeScreen.routeName,
      theme:AppThem.lightThem ,
      darkTheme: AppThem.darkThem,
      themeMode: ThemeMode.light ,
    );
  }
}

