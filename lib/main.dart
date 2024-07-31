
import 'package:flutter/material.dart';
import 'package:islami_app/app_them.dart';
import 'package:islami_app/home_screen.dart';
import 'package:islami_app/taps/hadeth/hadeth_details.dart';
import 'package:islami_app/taps/hadeth/hadeth_tab.dart';
import 'package:islami_app/taps/quran/sura_details_screen.dart';
import 'package:islami_app/taps/radio/radio_tab.dart';
import 'package:islami_app/taps/sebha/sebha_tab.dart';
import 'package:islami_app/taps/setting/settingProvider.dart';
import 'package:islami_app/taps/setting/setting_tab.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      ChangeNotifierProvider(create: (_) => SettingProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   SettingProvider settingProvider = Provider.of<SettingProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SebhaTabs.routeName: (context) => SebhaTabs(),
        RadioTabs.routeName: (context) => RadioTabs(),
        HadethTabs.routeName: (context) => HadethTabs(),
        SettingTabs.routeName: (context) => SettingTabs(),
        SuraDetails.routeName: (context) => SuraDetails(),
        HadethDetailsSCreen.routeName: (context) => HadethDetailsSCreen(),
      },
      initialRoute: HomeScreen.routeName,
      theme: AppThem.lightThem,
      darkTheme: AppThem.darkThem,
      themeMode: settingProvider.themMode,
    );
  }
}
