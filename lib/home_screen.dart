import 'package:flutter/material.dart';
import 'package:islami_app/taps/hadeth/hadeth_tab.dart';
import 'package:islami_app/taps/quran/quran_tab.dart';
import 'package:islami_app/taps/radio/radio_tab.dart';
import 'package:islami_app/taps/sebha/sebha_tab.dart';
import 'package:islami_app/taps/setting/settingProvider.dart';
import 'package:islami_app/taps/setting/setting_tab.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "/homeScreen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> tabs = [
    QuranTabs(),
    HadethTabs(),
    SebhaTabs(),
    RadioTabs(),
    SettingTabs(),
  ];
  @override
  Widget build(BuildContext context) {
       SettingProvider settingProvider = Provider.of<SettingProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage( settingProvider.themMode== ThemeMode.light ?"assets/images/default_bg.png":"assets/images/dark_bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('إسلامي'),
        ),
        body: tabs[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              currentIndex = value;
              setState(() {});
            },
            currentIndex: currentIndex,
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/icon_quran.png"),
                  ),
                  label: "quran"),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/icon_hadeth.png"),
                  ),
                  label: "hadeth"),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/icon_sebha.png"),
                  ),
                  label: "sebha"),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/icon_radio.png"),
                  ),
                  label: "raido"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings_outlined), label: "setting"),
            ]),
      ),
    );
  }
}
